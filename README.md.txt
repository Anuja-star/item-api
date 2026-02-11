# Item API - Spring Boot Project

This is a simple Spring Boot REST API project that allows users to:
- Add a new item
- Get a single item by ID

The application uses an in-memory data store (ArrayList) and includes input validation.


## Technologies Used
- Java 17
- Spring Boot 3.5.10
- Spring Web
- Spring Validation
- Maven
- Postman (for testing)


## How to Run the Application

1. Open the project folder:
   itemapi

2. Run the command:
   mvn spring-boot:run

3. The application will start at:
   http://localhost:9091


## API Endpoints

### 1. Add a New Item
*POST*  
`http://localhost:9091/api/items`

## Request Body (JSON):
 
{
  "name": "Laptop",
  "description": "Dell i7 laptop",
  "price": 65000
}

Response:

{
  "id": 1,
  "name": "Laptop",
  "description": "Dell i7 laptop",
  "price": 65000
}

2. Get Item by ID

GET
http://localhost:9091/api/items/{id}

Example:

http://localhost:9091/api/items/1


Response:
{
  "id": 1,
  "name": "Laptop",
  "description": "Dell i7 laptop",
  "price": 65000
}

##Validation Rules

- Name must not be blank

- Description must not be blank

- Price must be positive

- If invalid data is sent, the API returns 400 Bad Request.

## In-Memory Storage

- Items are stored in an ArrayList inside ItemService.
- Data will be lost when the application stops.
