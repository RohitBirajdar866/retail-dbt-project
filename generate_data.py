import pandas as pd
import numpy as np
from faker import Faker

fake = Faker()

customers = []

for i in range(1000):
    customers.append({
        "customer_id": i+1,
        "customer_name": fake.name(),
        "email": fake.email(),
        "city": fake.city(),
        "country": fake.country(),
        "join_date": fake.date()
    })

df = pd.DataFrame(customers)

df.to_csv("seeds/customers.csv", index=False)

print("Customers dataset created")


products = []

categories = ["Electronics", "Clothing", "Home", "Sports", "Beauty"]

for i in range(1000):
    products.append({
        "product_id": i+1,
        "product_name": fake.word(),
        "category": np.random.choice(categories),
        "price": round(np.random.uniform(100, 5000), 2),
        "supplier_id": np.random.randint(1, 200)
    })

df_products = pd.DataFrame(products)

df_products.to_csv("seeds/products.csv", index=False)

print("Products dataset created")


orders = []

for i in range(2000):
    orders.append({
        "order_id": i+1,
        "customer_id": np.random.randint(1, 1000),
        "order_date": fake.date(),
        "store_id": np.random.randint(1, 100),
        "order_status": np.random.choice(["Delivered", "Shipped", "Cancelled"])
    })

df_orders = pd.DataFrame(orders)

df_orders.to_csv("seeds/orders.csv", index=False)

print("Orders dataset created")


order_items = []

for i in range(3000):
    order_items.append({
        "order_item_id": i+1,
        "order_id": np.random.randint(1, 2000),
        "product_id": np.random.randint(1, 1000),
        "quantity": np.random.randint(1, 5),
        "price": round(np.random.uniform(100, 5000), 2)
    })

df_order_items = pd.DataFrame(order_items)

df_order_items.to_csv("seeds/order_items.csv", index=False)

print("Order Items dataset created")


stores = []

for i in range(200):
    stores.append({
        "store_id": i+1,
        "store_name": fake.company(),
        "city": fake.city(),
        "state": fake.state(),
        "country": fake.country(),
        "open_date": fake.date()
    })

df_stores = pd.DataFrame(stores)

df_stores.to_csv("seeds/stores.csv", index=False)

print("Stores dataset created")


suppliers = []

for i in range(500):
    suppliers.append({
        "supplier_id": i+1,
        "supplier_name": fake.company(),
        "contact_name": fake.name(),
        "email": fake.email(),
        "city": fake.city(),
        "country": fake.country()
    })

df_suppliers = pd.DataFrame(suppliers)

df_suppliers.to_csv("seeds/suppliers.csv", index=False)

print("Suppliers dataset created")