# Learn Kubernetes

This repository contains examples of Kubernetes projects to help you understand and practice different aspects of Kubernetes deployments. All examples have been tested on the Minikube environment.

## Projects Included

### 1. WordPress UI with MySQL Database

Deploy a WordPress application with a MySQL database using Kubernetes. This example includes the setup of Persistent Volumes (PV) and Persistent Volume Claims (PVC) for data persistence.

### 2. Nginx Simple Deployment and Service

Deploy a simple Nginx website using Kubernetes. This example demonstrates the basic deployment of a containerized application and the creation of a Kubernetes Service to expose it.

### 3. Busybox Deployment

Deploy a Busybox container using Kubernetes. This example serves as a basic introduction to deploying a minimal container and interacting with it.

### 4. Config Map Usage

Illustrate the usage of Config Maps in Kubernetes. Learn how to store configuration data separately from application code and use it within your pods.

### 5. Secrets Usage

#### a. Secret as Environment Variable

Showcase how to use Kubernetes Secrets as environment variables within a pod.

#### b. Secret as Volume

Demonstrate the usage of Kubernetes Secrets as volumes for secure storage and access within a pod.

### 6. Ingress Implementation

Implement Ingress for two Nginx microservices:

- Ingress for `site.com/route`
- Ingress for `route.site.com`

Explore how to route external traffic to different microservices based on the specified paths.

### 7. Kubernetes Jobs

Explore various types of Kubernetes jobs:

- CronJob: Schedule and automate tasks at specific intervals.
- DaemonSet: Ensure that a pod runs on all nodes in the cluster.
- StatefulSet: Deploy and manage stateful applications with unique identities.

## Getting Started

To run these examples on your local machine, make sure you have Minikube installed. Follow the steps below:

1. Install Minikube: [Minikube Installation Guide](https://minikube.sigs.k8s.io/docs/start/)

2. Clone this repository:

   ```bash
   git clone https://github.com/your-username/learn-kubernetes.git
   cd learn-kubernetes
