# Tech Challenge 2

## 📌 Project Overview

This project demonstrates the deployment of a Python Flask web application using modern DevOps practices. The application is containerized with Docker, infrastructure is provisioned with Terraform, deployed to Amazon EKS using Helm, and automated through a Jenkins CI/CD pipeline.

---

## 🏗️ Architecture

```
Developer
    │
    ▼
 GitHub Repository
    │
    ▼
 Jenkins Pipeline
    │
    ├── Build Docker Image
    ├── Push Image to Amazon ECR
    └── Deploy to Amazon EKS using Helm
                      │
                      ▼
                Kubernetes Pods
                      │
                      ▼
             AWS Load Balancer
                      │
                      ▼
              Flask Web Application
```

---

## 🚀 Technologies Used

- Python Flask
- Docker
- Amazon ECR
- Amazon EKS
- Kubernetes
- Helm
- Terraform
- Jenkins
- Git & GitHub
- AWS CLI

---

## 📂 Project Structure

```
tech-challenge-2/
│
├── app/
│   ├── app.py
│   └── requirements.txt
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── helm/
│   └── hello-world/
│
├── Dockerfile
├── Jenkinsfile
├── .gitignore
└── README.md
```

---

## ⚙️ Prerequisites

Before running this project, ensure you have:

- AWS CLI
- Docker Desktop
- Terraform
- kubectl
- Helm
- Jenkins
- Git

---

## 🐳 Docker

Build the Docker image:

```bash
docker build -t tech-challenge-2 .
```

Run the container:

```bash
docker run -p 5000:5000 tech-challenge-2
```

---

## ☁️ Terraform

Initialize Terraform:

```bash
terraform init
```

Plan the deployment:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

---

## ☸️ Kubernetes & Helm

Validate the Helm chart:

```bash
helm lint ./helm/hello-world
```

Deploy to EKS:

```bash
helm upgrade --install hello-world ./helm/hello-world
```

Verify deployment:

```bash
kubectl get pods
kubectl get svc
kubectl get deployment
```

---

## 🔄 Jenkins CI/CD Pipeline

The Jenkins pipeline performs the following tasks:

1. Checks out the source code from GitHub.
2. Builds the Docker image.
3. Pushes the Docker image to Amazon ECR.
4. Deploys the application to Amazon EKS using Helm.
5. Verifies the Kubernetes deployment.

---

## 📸 Project Screenshots

Include screenshots of:

- Jenkins Pipeline
- Kubernetes Pods
- Kubernetes Services
- AWS Load Balancer
- Running Flask Application

---

## 🎯 Outcome

This project demonstrates practical experience with:

- Infrastructure as Code (Terraform)
- Containerization with Docker
- Kubernetes orchestration using Amazon EKS
- Helm package management
- Jenkins CI/CD automation
- AWS cloud deployment
- Git version control