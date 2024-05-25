import math
from datetime import datetime
from typing import List

from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

app = FastAPI()


class Order(BaseModel):
    id: int
    user_id: int
    driver_id: int
    vehicle_id: int
    departure_datetime: datetime
    is_holiday: bool = False
    departure_location: str
    destination_location: str
    passenger_count: int
    special_requests: str = None
    booking_status: str
    price: float
    estimated_time: int
    estimated_distance: float
    timezone: str


def calculate_order_price(order: Order) -> float:
    base_price = 10
    distance_price = math.ceil(order.estimated_distance)
    daytime_price = 0

    departure_hour = order.departure_datetime.hour
    if 18 <= departure_hour < 24:
        daytime_price = base_price * 0.05
    elif 0 <= departure_hour < 6:
        daytime_price = base_price * 0.12

    sunday_and_holiday_cost = base_price * 0.10 if (order.departure_datetime.weekday() == 6 or order.is_holiday) else 0

    return base_price + distance_price + daytime_price + sunday_and_holiday_cost


orders: List[Order] = []


@app.post("/orders/add/")
async def add_order(order: Order):
    for existing_order in orders:
        if existing_order.id == order.id:
            raise HTTPException(status_code=400, detail="Order with this id already exists")
    orders.append(order)
    return {"message": f"Successfully added the Order with id: {order.id}"}


@app.get("/orders/")
async def list_orders():
    return orders


@app.get("/orders/{order_id}")
async def get_order(order_id: int):
    for order in orders:
        if order.id == order_id:
            return order
    raise HTTPException(status_code=404, detail="Order not found")


@app.post("/orders/price_add/")
async def add_order_cost(order_id: int):
    for order in orders:
        if order.id == order_id:
            if order.price > 0:
                raise HTTPException(status_code=400, detail="Order already has a price, please use PUT method to "
                                                            "update it")
            order.price = calculate_order_price(order)
            return {"message": f"Successfully added a price: {order.price} to the Order with id: {order.id}"}
    raise HTTPException(status_code=404, detail="Order not found")


@app.put("/orders/price_update/{order_id}")
async def update_order_cost(order_id: int):
    for order in orders:
        if order.id == order_id:
            order.price = calculate_order_price(order)
            return {"message": f"Successfully updated the price: {order.price} of the Order with id: {order.id}"}
    raise HTTPException(status_code=404, detail="Order not found")
