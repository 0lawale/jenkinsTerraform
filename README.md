# 🚀 Jenkins Server on AWS using Terraform

## 📘 Overview
This project provisions a **Jenkins CI/CD server** on **AWS** using **Terraform**.  
It automatically sets up:
- A **custom VPC**
- A **public subnet**
- An **EC2 instance** running Jenkins
- A **security group** allowing access to SSH (port 22), HTTP (port 80), and Jenkins (port 8080)

This setup serves as a base infrastructure for practicing **CI/CD pipelines** and **DevOps automation** with Jenkins.

---

## 🧩 Architecture Diagram
    +-----------------------------+
    |         AWS Cloud           |
    |                             |
    |   +---------------------+   |
    |   |       VPC           |   |
    |   |  +---------------+  |   |
    |   |  | Public Subnet |  |   |
    |   |  |   EC2 (Jenkins)|  |  |
    |   |  |   SG: 22,80,8080|  |  |
    |   |  +---------------+  |   |
    |   +---------------------+   |
    +-----------------------------+


---

## ⚙️ Components

| Component | Description |
|------------|-------------|
| **VPC** | Custom VPC created with CIDR block `172.19.0.0/16` |
| **Subnet** | Public subnet with internet access and a CIDR block `172.19.10.0/24` |
| **Internet Gateway** | Allows inbound/outbound internet traffic |
| **Route Table** | Routes outbound traffic through the IGW |
| **Security Group** | Allows SSH (22), HTTP (80), and Jenkins (8080) |
| **EC2 Instance** | Ubuntu server running Jenkins |

---

## 📦 Requirements

Make sure you have the following installed:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.5+
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS credentials configured (`aws configure`)
- SSH key pair created in AWS (for EC2 access)

---

## 🚀 How to Deploy

```bash
# Clone the repository
git clone git@github.com:AY0-WEB/jenkinsTerraform.git
cd jenkinsTerraform

# initialize terraform
terraform init

# Review the plan
terraform plan

# Apply the configuration
terraform apply

```

## Access jenkins
once jenkins complete it will output the public ip of the ec2 instance
open your browser and visit:
http://<EC2-PUVBLIC_IP>:8080
 
SSH into the instance to get the initial Jenkins admin password:

```bash
ssh -i <your-key>.pem ubuntu@<EC2-PUBLIC-IP>
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
## Tear down
To destroy all resources
```bash
terraform destroy
```
## 📁 Project Structure
```bash
.
├── dev.tfvars
├── main.tf
├── modules
│   ├── ec2
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   └── network
│       ├── main.tf
│       ├── output.tf
│       └── variables.tf
├── output.tf
├── provider.tf
├── README.md
├── terraform.tfstate.d
│   └── dev
│       ├── terraform.tfstate
│       └── terraform.tfstate.backup
└── variables.tf

6 directories, 14 files
```
## 👤 Author

- Ayoola Philip Olawale
- 🛠️ DevOps Engineer | Petroleum Engineer | Educator
- 📧 [olawalephilip0@gmail.com]



