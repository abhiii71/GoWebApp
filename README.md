# GoWebApp


## Description

GoWebApp is a simple web application built with Go (Golang) programming language. It demonstrates basic web development concepts such as routing, serving static files, and handling HTTP requests.

## Installation

### Prerequisites

- Docker installed on your machine. You can download and install Docker from [here](https://www.docker.com/get-started).

### Clone the Repository

Clone the GoWebApp repository to your local machine:

```bash
git clone https://github.com/helloabhii/GoWebApp.git

cd GoWebApp 
```

### Build Docker Image

Build the Docker image for the GoWebApp:

```bash
docker build -t gowebapp .
```

### Run Docker Container

Run a Docker container based on the gowebapp image:
```bash
docker run -d -p 8080:8080 gowebapp
```

### Access the Application

Open your web browser and navigate to [http://localhost:8080](http://localhost:8080) to access the GoWebApp.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or improvements, feel free to open an issue or submit a pull request.

