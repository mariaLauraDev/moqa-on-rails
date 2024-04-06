# Air Quality Monitoring API

This project provides an API for air quality monitoring devices to interact via HTTPS. Devices can register air quality monitoring logs. The application supports authentication and was built using Ruby on Rails, with MongoDB as the database.

## Requirements

- Ruby '3.2.1'
- MongoDB
- Bundler

## Configuration

### MongoDB Setup

Ensure you have MongoDB installed and configured. You need to create a cluster and a database for this application. Follow MongoDB's documentation for setup instructions.

### Environment Setup

1. Clone the repository to your local machine.
2. Run `bundle install` to install the required gems.
3. Setup your `.env` file based on the provided `.env.example` with your MongoDB connection details and any other environment variables required.

## Running the Application

1. Start the MongoDB service on your machine.
2. Run `rails s` to start the Ruby on Rails server. The API will be available at `http://localhost:3000`.

## Authentication

This application uses Devise and Devise-JWT for authentication. Users can register and authenticate to access protected routes.

### Registering a New User

Send a POST request to `/api/v1/users` with a JSON body containing the user details:

```json
{
  "user": {
    "email": "example@example.com",
    "password": "password"
  }
}
```

### Authenticating
Send a POST request to /api/v1/sign_in with a JSON body containing the user credentials. A JWT token will be returned in the response.

## Using the API

### Creating an Air Quality Log
- Endpoint: POST /api/v1/air_quality_logs
- Headers: Authorization: Bearer <token>
- Body:
```json
{
  "co2": 400,
  "pm10": 12.5
  // Additional fields...
}
```

### Fetching Air Quality Logs
- Endpoint: GET `/api/v1/air_quality_logs`
- Headers: Authorization: Bearer `<token>`

### Contributing
Contributions to this project are welcome. Please fork the repository and submit a pull request with your changes.

### License
This project is open source and available under the MIT License.
