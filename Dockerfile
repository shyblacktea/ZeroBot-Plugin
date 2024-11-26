# Use a slim base image to reduce size
FROM golang:1.20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go modules and the Go code
COPY go.mod ./
COPY go.sum ./
COPY . .

# Install dependencies
RUN go mod tidy

# Build the application
RUN go build -o main .

# Expose the port your application listens on
EXPOSE 3000

# Define the command to run when the container starts
CMD ["./main"]
