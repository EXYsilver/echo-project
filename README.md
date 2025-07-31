# Echo Web Service API

![Python](https://img.shields.io/badge/python-3.10-blue)
![Django](https://img.shields.io/badge/django-5.2-brightgreen)
![Docker](https://img.shields.io/badge/docker-%3E=20.10-blue)
![Kubernetes](https://img.shields.io/badge/kubernetes-%3E=1.23-326ce5)

Minimal web service with an `/echo` endpoint that returns an environment variable value.

## Key Features
- Python/Django web service
- Docker image following best practices
- Kubernetes Deployment with 2 replicas
- Internal Service on port 80

## Installation

### 1. Start Minikube:
```bash
minikube start
eval $(minikube docker-env)
```

### 2. Build Docker image
```bash
docker build -t echo-service .
kubectl apply -f k8s/deployment.yaml
```

### 3. Access the service:
```bash
kubectl port-forward service/echo-service 8080:80
```

Then visit: http://localhost:8080/echo

## Author
Maksudov Abdullo
exysilverggexy@gmail.com 
[@EXYsilver](https://github.com/EXYsilver)
