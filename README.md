# AWS VPC Infrastructure with Terraform

This repository contains the **Infrastructure as Code (IaC)** to provision a highly available and secure **Virtual Private Cloud (VPC)** on AWS using Terraform. This setup serves as the foundational networking layer for scalable data platforms.

## 🌐 Project Overview

Modern Data Engineering requires more than just storage; it requires a secure environment for data processing. This project automates the creation of a custom network, ensuring that data resources (like RDS or EMR clusters) are isolated from the public internet when necessary.

### 💎 Key Features:
* **Custom VPC:** A dedicated logical network with a `10.0.0.0/16` CIDR block.
* **Multi-AZ Subnets:** * **Public Subnets:** For resources that need internet access (e.g., NAT Gateways or Bastion Hosts).
    * **Private Subnets:** For secure data workloads and databases.
* **Internet Gateway (IGW):** Enables communication between the VPC and the internet.
* **Route Tables:** Custom routing logic to manage traffic flow between subnets and the gateway.
* **High Availability:** Resources are distributed across multiple Availability Zones (`us-east-1a` and `us-east-1b`).

## 🛠️ Tech Stack
* **Cloud Provider:** AWS (Amazon Web Services)
* **IaC Tool:** Terraform
* **Networking Services:** VPC, Subnets, IGW, Route Tables.

## 📋 Architecture Flow (Simplified)
```text
[Internet] <───> [Internet Gateway]
                         │
                [Public Route Table]
                         │
        ┌────────────────┴────────────────┐
        │                                 │
 [Public Subnet A]                 [Public Subnet B]
 (Availability Zone 1)             (Availability Zone 2)

💻 How to Run
Initialize the working directory:

Bash
terraform init
Plan the infrastructure:

Bash
terraform plan
Apply changes:

Bash
terraform apply
Destroy resources (to avoid costs):

Bash
terraform destroy
🌍 Why this matters for Data Engineering?
In a professional setting, data security is paramount. By using Private Subnets and VPC Endpoints, we ensure that sensitive data never leaves the AWS internal network. This project demonstrates my ability to build the "secure home" where data pipelines live, following the best practices of Cloud Networking and Security.
