# Use an official image of gcc as a base image
FROM gcc:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Compile the C++ code
RUN g++ -o main main.cpp

# Run the executable
CMD ["./main"]
