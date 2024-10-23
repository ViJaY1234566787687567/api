# api
Working with Api

Here’s a good README.md for your project:

Store Inventory API
This is a simple Flask API for managing stores and their items. It provides two endpoints:

To retrieve details of a store by name.
To retrieve all items available in a particular store.
Features
Retrieve store details by name.
Retrieve items in a specific store.

Endpoints
1. Get Store by Name
GET /store/<string:name>

Retrieves a specific store by name.

Request Parameters: name (string) - The name of the store.
Response:
Success: Returns the store details (e.g., store name, items).
Error: Returns a 404 status code with a message {"message": "Store not found"}.

2. Get Items in a Store
GET /store/<string:name>/item

Retrieves all items in a specific store.

Request Parameters: name (string) - The name of the store.
Response:
Success: Returns a list of items in the store.
Error: Returns a 404 status code with a message {"message": "Store not found"}.

Error Handling
If the requested store is not found, the API will return:

A 404 status code
A JSON response: {"message": "Store not found"}
