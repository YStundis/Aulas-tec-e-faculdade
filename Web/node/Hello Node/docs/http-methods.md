## HTTP Methods for RESTful Services

| HTTP Verb | CRUD           | Status Codes                         |
| --------- | -------------- | ------------------------------------ |
| POST      | Create         | 200 OK, 201 Created, 202 Accepted    |
| GET       | Read           | 200 OK, 206 Partial Content          |
| PUT       | Update/Replace | 200 OK, 204 No Content, 202 Accepted |
| PATCH     | Update/Modify  | 200 OK, 204 No Content, 202 Accepted |
| DELETE    | Delete         | 200 OK, 204 No Content, 202 Accepted |

## Examples

### POST

> POST http://www.example.com/customers
>
> BODY { name: "Sir Name", address: "Street Name" }

### GET

> GET http://www.example.com/customers
>
> GET http://www.example.com/customers/12345
>
> GET http://www.example.com/customers?page=20&perPage=30

### PUT / PATCH

> PUT/PATCH http://www.example.com/customers/12345
>
> BODY { name: "Sir Alter Name", address: "Street Alter Name" }

### DELETE

> DELETE http://www.example.com/customers/12345
