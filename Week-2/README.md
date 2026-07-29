# Week 2 – AWS Cloud Computing Internship Progress Report

## Secure AWS VPC Network Architecture with Terraform

## Overview

During Week 2 of the InternCareerPath Cloud Computing Internship Program, I focused on designing a secure and scalable Amazon Web Services (AWS) networking environment using Terraform. This project strengthened my understanding of Infrastructure as Code (IaC), AWS networking fundamentals, and secure cloud architecture by translating AWS networking concepts into reusable Terraform configurations.

Rather than manually provisioning infrastructure through the AWS Management Console, I used Terraform to define infrastructure as code, making deployments more consistent, repeatable, and easier to maintain. This experience reinforced the importance of automation in modern cloud engineering and demonstrated how Infrastructure as Code improves scalability, reduces configuration errors, and supports collaborative development.

---

# Project Objective

The objective of this project was to design a production-style Virtual Private Cloud (VPC) environment that follows AWS networking and security best practices. The infrastructure was planned to provide secure communication between cloud resources while separating publicly accessible services from private internal resources.

The project also served as practical experience in cloud infrastructure automation, resource dependency management, and secure network design using Terraform.

---

# Project Architecture

The infrastructure design consisted of the following AWS resources:

* Amazon Virtual Private Cloud (VPC)
* Public Subnet
* Private Subnet
* Internet Gateway
* NAT Gateway
* Route Tables
* Route Table Associations
* Security Groups
* Amazon EC2 integration (planned)

The architecture followed a layered network design where internet-facing resources are isolated from backend services to improve security and availability.

---

# AWS Services Used

## Amazon VPC

Amazon VPC served as the foundation of the infrastructure by creating a logically isolated virtual network within AWS. It provided complete control over IP addressing, subnet creation, routing, and network security.

Through this project, I gained practical experience in:

* CIDR block planning
* Network segmentation
* Resource isolation
* Virtual networking concepts

---

## Public Subnet

The public subnet was designed for resources that require internet access, such as web servers or load balancers.

Key configuration considerations included:

* Association with a public route table
* Internet Gateway connectivity
* Automatic public IP assignment where appropriate

This helped me understand how AWS routes external traffic to publicly accessible resources.

---

## Private Subnet

The private subnet was designed for internal resources that should remain inaccessible from the public internet.

Resources intended for this subnet include:

* Application servers
* Backend services
* Databases

Designing the private subnet reinforced the principle of minimizing the attack surface by keeping sensitive workloads isolated.

---

## Internet Gateway

An Internet Gateway was incorporated to enable communication between public subnet resources and the internet.

I learned how route tables determine which subnet traffic is directed through the Internet Gateway and how this configuration enables secure internet connectivity for public-facing resources.

---

## NAT Gateway

The NAT Gateway was included in the network design to allow instances within the private subnet to access the internet for software updates, package installations, and other outbound requests without exposing those instances to inbound internet traffic.

This improved my understanding of secure outbound connectivity and network isolation.

---

## Route Tables

Separate route tables were planned to manage traffic for public and private subnets.

The public route table directed internet-bound traffic through the Internet Gateway, while the private route table directed outbound traffic through the NAT Gateway.

This demonstrated how AWS routing controls communication within cloud environments.

---

## Security Groups

Security Groups were configured as virtual firewalls to control inbound and outbound traffic.

The security strategy emphasized the principle of least privilege by allowing only required network traffic.

Examples of controlled access included:

* SSH (Port 22) for administrative access
* HTTP (Port 80) for web traffic
* HTTPS (Port 443) for secure communication

This strengthened my understanding of cloud security and secure network access control.

---

# Infrastructure as Code with Terraform

Terraform was used to automate the provisioning of AWS resources.

Instead of manually creating infrastructure, each resource was defined using declarative configuration files.

This approach provided several benefits:

* Consistent infrastructure deployment
* Reduced manual configuration errors
* Version-controlled infrastructure
* Reusable and maintainable configurations
* Simplified infrastructure updates

Throughout this project, I improved my understanding of Terraform resource blocks, variables, outputs, dependencies, and execution workflow.

---

# Terraform Project Structure

```text
secure-aws-vpc/
├── provider.tf
├── versions.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── README.md
```

Each file served a specific purpose:

* **provider.tf** – Configured the AWS provider.
* **versions.tf** – Defined Terraform version requirements.
* **main.tf** – Contained the core infrastructure resources.
* **variables.tf** – Declared reusable input variables.
* **terraform.tfvars** – Stored variable values.
* **outputs.tf** – Displayed useful deployment outputs after provisioning.

---

# Technical Skills Strengthened

Throughout this project, I strengthened my knowledge in:

* Amazon Web Services (AWS)
* Amazon VPC
* Cloud Networking
* Infrastructure as Code (IaC)
* Terraform
* Cloud Security
* Network Segmentation
* CIDR Planning
* Route Tables
* Security Groups
* Internet Gateway
* NAT Gateway
* Git
* GitHub
* Visual Studio Code

---

# Key Learning Outcomes

This project significantly improved my understanding of cloud infrastructure design and automation.

Some of the most valuable lessons included:

* Designing secure AWS network architectures using industry best practices.
* Understanding how AWS networking components interact to create scalable cloud environments.
* Translating AWS Console configurations into Terraform code.
* Recognizing resource dependencies and deployment order within Terraform.
* Applying cloud security principles through subnet isolation and controlled network access.
* Appreciating the value of Infrastructure as Code in creating repeatable and maintainable cloud environments.

---

# Challenges Encountered

One of the primary challenges was understanding how individual AWS networking components depend on one another.

Learning how VPCs, subnets, gateways, route tables, and security groups work together required careful study and practical experimentation. Breaking the architecture into smaller components and reviewing AWS documentation helped me develop a clearer understanding of the relationships between these services.

Another challenge involved translating conceptual AWS networking knowledge into Terraform configurations. This experience improved my ability to think systematically about infrastructure design rather than focusing solely on individual resources.

---

# Next Steps

The next phase of this project will include:

* Completing the Terraform deployment.
* Validating the infrastructure using Terraform plan and apply.
* Integrating Amazon EC2 within the VPC.
* Testing network connectivity between public and private resources.
* Adding architecture diagrams and deployment screenshots.
* Enhancing the project documentation with implementation details and lessons learned.

---

## Repository

**GitHub Repository:**
Cloud Computing Internship Portfolio

**Repository URL:**
https://github.com/Blessing-05/ICP-DFA28011-2026-REPO
