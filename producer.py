from kafka import KafkaProducer
import json
import random
from faker import Faker
import time

# Initialize Faker for fake data generation
fake = Faker()

# Kafka Producer setup
producer = KafkaProducer(
    bootstrap_servers="localhost:9092",
    value_serializer=lambda v: json.dumps(v).encode("utf-8"),
)

# List of random products & categories
products = [
    ("Milk", "Dairy", 1.5),
    ("Bread", "Bakery", 2.0),
    ("Eggs", "Dairy", 3.5),
    ("Apple", "Fruits", 0.8),
    ("Chicken", "Meat", 5.0),
    ("Rice", "Grains", 2.5),
    ("Orange Juice", "Beverages", 3.0),
]

# Function to generate fake sales data
def generate_sales_record():
    product, category, price = random.choice(products)
    quantity = random.randint(1, 5)
    return {
        "order_id": fake.unique.random_int(min=1000, max=9999),
        "timestamp": fake.date_time_this_year().isoformat(),
        "customer_id": fake.unique.random_int(min=10000, max=99999),
        "product_name": product,
        "category": category,
        "price": price,
        "quantity": quantity,
        "total_price": round(price * quantity, 2),
    }

# Continuous data streaming
while True:
    sales_data = generate_sales_record()
    producer.send("test-topic", sales_data)
    print(f"Sent: {sales_data}")
    time.sleep(1)  # Simulate real-time streaming

