from kafka import KafkaConsumer
import json
import mysql.connector

# Connect to MySQL
db_conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="********",  # Replace with your actual MySQL password, I have erased my password
    database="supermarket"
)
cursor = db_conn.cursor()

# Kafka Consumer setup
consumer = KafkaConsumer(
    "test-topic",
    bootstrap_servers="localhost:9092",
    value_deserializer=lambda v: json.loads(v.decode("utf-8")),
    auto_offset_reset="earliest",
)

# Insert Kafka messages into MySQL
for message in consumer:
    sales_data = message.value
    print("Received message:", sales_data)  # Debugging line

    # Check if the expected keys exist
    if "order_id" not in sales_data:
        print("⚠️ ERROR: 'order_id' not found in message! Skipping...")
        continue  # Skip this message

    # Insert into MySQL
    sql = """
    INSERT INTO sales (order_id, timestamp, customer_id, product_name, category, price, quantity) 
    VALUES (%s, %s, %s, %s, %s, %s, %s)
    """
    values = (
        sales_data["order_id"],
        sales_data["timestamp"],
        sales_data["customer_id"],
        sales_data["product_name"],
        sales_data["category"],
        sales_data["price"],
        sales_data["quantity"],
    )

    cursor.execute(sql, values)
    db_conn.commit()
    print(f"Inserted into MySQL: {sales_data}")


