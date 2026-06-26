# 🚀 AKS Observability, Security & Monitoring Platform

A production-grade Kubernetes-based platform deployed on **Azure Kubernetes Service (AKS)** featuring full CI/CD automation, observability stack, security scanning, autoscaling, ingress management, and backup strategy using Velero.

---

# 📌 Project Overview

This project demonstrates a complete cloud-native DevOps platform built with:

- Kubernetes (AKS)
- Terraform Infrastructure as Code
- CI/CD Pipeline automation
- Prometheus + Grafana monitoring
- Loki log aggregation
- Trivy security scanning
- NGINX Ingress Controller with traffic metrics
- Velero backup system
- TLS/HTTPS security policies
- Autoscaling (HPA)
- Network policies & RBAC

The goal is to simulate a real production-level cloud environment used in modern DevOps/SRE teams.

---

# 🏗️ Architecture

### 1. Infrastructure Layer
- Azure Kubernetes Service (AKS)
- Terraform provisioning
- Azure Storage (Velero backups)

### 2. Application Layer
- Backend service (containerized)
- React frontend application
- Kubernetes deployments & services

### 3. Observability Layer
- Prometheus (metrics)
- Grafana (dashboards)
- Loki + Promtail (logs)

### 4. Security Layer
- Trivy image scanning
- TLS certificates (cert-manager)
- Network Policies
- RBAC

### 5. Traffic Layer
- NGINX Ingress Controller
- Rate limiting
- Request monitoring

---

# 📸 Screenshots & Observability

## 🧱 Infrastructure

### Terraform Apply
![Terraform](screenshots/terraform-apply.png)

### Cluster Environment
![Cluster](screenshots/cluster_production_environment.png)

### Cluster State
![Cluster State](screenshots/clusterproductionstate.png)

---

## 🖥️ Application Layer

### React App Created
![React](screenshots/Create_REACTApp.png)

### App Running in Browser
![App](screenshots/app-running-browser.png)

### Backend Observability
![Backend](screenshots/backend-observability-dashboard.png)

### Pods Running
![Pods](screenshots/all-running-pods.png)

---

## 📊 Monitoring & Observability

### Kubernetes Cluster Overview
![Cluster](screenshots/kubernetes-cluster-overview.png)

### Prometheus Targets
![Prometheus](screenshots/prometheus_scaped.png)

### Grafana Login
![Grafana](screenshots/Login_to_Grafana_dashboard.png)

### Loki Log Explorer
![Loki](screenshots/Grafana-Log-Explorer-Loki_promtail.png)

### Loki Health Status
![Loki](screenshots/loki_healthy_runny_readyStatus.png)

---

## 🌐 Ingress Monitoring

### Request Rate
![Ingress](screenshots/ingress_request_rate.png)

### Traffic by Namespace
![Ingress](screenshots/Ingress_Traffic_by_Namespace.png)

### Latency (P95)
![Ingress](screenshots/ingress_latency_p95.png)

### Top Services
![Ingress](screenshots/Top_Ingress_Services.png)

### Error Rate
![Ingress](screenshots/ingress_error_rate.png)

---

## 🔐 Security & CI/CD

### CI/CD Pipeline
![CI/CD](screenshots/CICD_Pipeline_Monitoring.png)

### Trivy Scan
![Trivy](screenshots/trivy_scan_successfullypipeline.png)

### Security Dashboard
![Security](screenshots/Security_Dashboard.png)

---

## ⚙️ Automation

### Terraform Execution
![Terraform](screenshots/TerraformApply.png)

---

# 📦 Backup Strategy

- Velero configured for Kubernetes backups
- Azure Blob Storage as backup target
- Namespace-level restore capability

---

# 🔧 Tools & Technologies

- AKS (Azure Kubernetes Service)
- Kubernetes
- Terraform
- Docker
- Helm
- Prometheus
- Grafana
- Loki & Promtail
- NGINX Ingress Controller
- Trivy
- Velero
- GitHub Actions

---

# 🚀 Key Features

- Full cloud-native deployment on AKS
- Production-level observability stack
- Real-time metrics + logging
- CI/CD automation pipeline
- Security scanning (Trivy)
- TLS + ingress control
- Autoscaling (HPA)
- Disaster recovery (Velero)

---

# 📈 What This Project Demonstrates

- Kubernetes production readiness
- Azure cloud engineering skills
- DevOps CI/CD pipeline design
- Observability + monitoring expertise
- Security-first DevOps practices
- SRE-level infrastructure thinking

---

# 📌 Author

Franklin Chidera Emmanuel  
DevOps Engineer | Cloud & Kubernetes Enthusiast
