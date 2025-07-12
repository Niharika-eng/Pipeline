# Real-Time Data Pipeline with Kafka & MySQL

## Project Overview
This project demonstrates a real-time data pipeline using **Kafka, Python, and MySQL**. The pipeline simulates supermarket sales transactions, streams data through Kafka, and stores the records in a MySQL database.

## Tech Stack
- **Python** → For data generation, Kafka producer, and consumer
- **Kafka** → Message broker for real-time data streaming
- **MySQL** → Relational database for storing sales records
- **Docker** → Running Kafka services locally

## Project Structure
```
supermarket-pipeline
├── producer.py        # Simulates sales data and sends it to Kafka
├── consumer.py        # Reads data from Kafka and inserts it into MySQL
├── sales.sql          # Database schema
├── supermarket_backup.sql # Backup of MySQL database
└── README.md          # Documentation
```

## How to Set Up & Run
### Prerequisites
- Install **Docker** (for Kafka) and **MySQL** (local setup)
- Install required Python libraries:
  ```sh
  pip install kafka-python mysql-connector-python
  ```

### Start Kafka Services
Run Kafka and Zookeeper using Docker:
```sh
docker-compose up -d
```

### Create Kafka Topic
```sh
docker exec -it kafka-setup-kafka-1 bash -c "/usr/bin/kafka-topics --create --topic sales-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1"
```

### Set Up MySQL Database
1. Start MySQL and create a database:
   ```sql
   CREATE DATABASE supermarket;
   USE supermarket;
   ```
2. Load the schema:
   ```sh
   mysql -u root -p supermarket < sales.sql
   ```

### Run the Producer
```sh
python producer.py
```
This will generate random supermarket sales data and send it to Kafka.

### Run the Consumer
```sh
python consumer.py
```
This will read data from Kafka and insert it into MySQL.

## Sample Output
Example of inserted data:
```json
{
  "order_id": 12345,
  "timestamp": "2025-01-19T19:19:46",
  "customer_id": 41827,
  "product_name": "Eggs",
  "category": "Dairy",
  "price": 3.5,
  "quantity": 1,
  "total_price": 3.5
}
```

## Future Improvements
- Implement **data analytics** on stored records
- Add **machine learning predictions**
- Expand to multiple tables with foreign keys

