# Week 3 – Project 1 Completion

# Secure AWS VPC Network Architecture with Terraform

> **InternCareerPath Cloud Computing Internship Program**

---

# Overview

During Week 3 of the InternCareerPath Cloud Computing Internship Program, I completed the deployment, validation, and documentation of a secure AWS Virtual Private Cloud (VPC) network architecture using Terraform.

Building on the infrastructure developed during Week 2, this phase focused on provisioning the networking resources in AWS, validating that each component functioned correctly, verifying the deployment through the AWS Management Console, and documenting the completed project.

The infrastructure was deployed entirely through Terraform, demonstrating the practical application of Infrastructure as Code (IaC) to automate cloud resource provisioning. After deployment, each networking component was tested and verified to ensure the environment met the intended design and security requirements.

This project strengthened my understanding of AWS networking, Terraform workflows, deployment validation, and cloud infrastructure documentation while reinforcing best practices for building secure and repeatable cloud environments.

---

# Project Completion Objectives

The objectives of this phase were to:

* Successfully deploy the Terraform infrastructure to AWS.
* Validate that all networking resources were created correctly.
* Verify resource functionality through the AWS Management Console.
* Test the networking configuration.
* Review and strengthen security configurations.
* Document the completed deployment.
* Demonstrate practical Infrastructure as Code implementation.
* Prepare the project for publication on GitHub.

---

# Final Solution Architecture

The completed infrastructure consists of the following AWS networking components:

* Amazon Virtual Private Cloud (VPC)
* Public Subnet
* Private Subnet
* Internet Gateway
* NAT Gateway
* Route Tables
* Security Groups

An architecture diagram illustrating the completed deployment is included within this project directory.

---

# Infrastructure Deployment

The networking environment was deployed entirely through Terraform without manually creating resources in the AWS Management Console.

Terraform ensured that every infrastructure component was provisioned consistently, allowing the deployment to be repeatable, version-controlled, and easy to maintain.

The deployment followed Infrastructure as Code principles, reducing manual configuration errors while improving deployment reliability.

---

# Deployment Workflow

The deployment process followed the standard Terraform workflow.

## Terraform Initialization

```bash
terraform init
```

Initializes the working directory and downloads the AWS provider required to deploy the infrastructure.

---

## Configuration Validation

```bash
terraform validate
```

Checks the Terraform configuration for syntax errors and validates the overall configuration before deployment.

---

## Deployment Planning

```bash
terraform plan
```

Generates an execution plan that previews the infrastructure changes Terraform will make.

---

## Infrastructure Deployment

```bash
terraform apply
```

Creates the AWS networking infrastructure defined within the Terraform configuration files.

---

## Infrastructure Removal

```bash
terraform destroy
```

Removes all deployed AWS resources when they are no longer required, helping prevent unnecessary cloud costs.

---

# Deployment Verification

After deployment, each networking resource was verified to ensure the infrastructure matched the intended architecture.

The following components were successfully confirmed:

* Amazon VPC creation
* Public subnet deployment
* Private subnet deployment
* Internet Gateway attachment
* NAT Gateway deployment
* Route Table creation
* Route Table associations
* Security Group configuration
* Terraform Outputs

Each resource was reviewed through both Terraform outputs and the AWS Management Console.

---

# AWS Console Verification

Deployment evidence has been captured through screenshots of the completed infrastructure.

Screenshots included in this project demonstrate:

* Amazon VPC
* Public Subnet
* Private Subnet
* Internet Gateway
* NAT Gateway
* Route Tables
* Security Groups
* Terraform Apply output
* Terraform Outputs

These screenshots provide evidence that the infrastructure was successfully provisioned and configured.

---

# Security Validation

Cloud security remained a key focus throughout the deployment process.

The completed infrastructure incorporates several AWS networking best practices, including:

## Network Segmentation

Public-facing and internal resources were separated using dedicated public and private subnets.

---

## Security Groups

Security Groups were configured to restrict inbound and outbound traffic according to the Principle of Least Privilege.

Only the required network ports were permitted for communication.

---

## Controlled Internet Access

Resources within the public subnet communicate directly with the internet through the Internet Gateway.

Resources within the private subnet access the internet securely through the NAT Gateway without exposing private resources to unsolicited inbound traffic.

---

## Infrastructure as Code

Terraform provides consistent, repeatable deployments while reducing configuration drift and minimizing human error.

---

# Testing and Validation

Several validation checks were performed after deployment.

## Network Validation

Verified successful creation of all networking resources.

---

## Routing Validation

Confirmed that Route Tables were correctly associated with the appropriate subnets.

---

## Internet Connectivity Validation

Verified that public subnet resources were capable of internet communication through the Internet Gateway.

Confirmed that private subnet resources could securely access external services through the NAT Gateway.

---

## Security Validation

Reviewed Security Group rules to ensure only authorized traffic was permitted.

---

## Terraform Validation

Verified that Terraform outputs correctly displayed deployment information.

---

# Challenges Encountered

## Challenge 1

Understanding Route Table associations and how they control traffic flow between subnets and gateways.

### Solution

Reviewed AWS networking documentation, tested multiple routing configurations, and verified subnet associations until the expected traffic flow was achieved.

---

## Challenge 2

Managing Terraform resource dependencies during deployment.

### Solution

Used Terraform's dependency management and resource references to ensure infrastructure components were created in the correct order.

---

## Challenge 3

Interpreting Terraform deployment outputs and verifying infrastructure status.

### Solution

Compared Terraform outputs with the AWS Management Console to confirm that all resources were deployed successfully and matched the intended architecture.

---

# Skills Demonstrated

This project demonstrates practical experience with:

* Amazon Web Services (AWS)
* Amazon VPC
* Terraform
* Infrastructure as Code (IaC)
* AWS Networking
* Cloud Infrastructure Deployment
* Cloud Security
* Route Tables
* NAT Gateway
* Internet Gateway
* Security Groups
* Git
* GitHub

---

# Key Learning Outcomes

Completing this project strengthened my understanding of:

* Deploying AWS infrastructure using Terraform.
* Validating Infrastructure as Code deployments.
* Troubleshooting AWS networking configurations.
* Implementing secure cloud networking practices.
* Managing Terraform deployment workflows.
* Documenting completed cloud infrastructure projects.
* Applying AWS networking best practices within production-style environments.

---

# Project Outcome

The project was successfully completed by deploying and validating a secure AWS Virtual Private Cloud network architecture using Terraform.

The completed infrastructure provides a secure networking foundation capable of supporting future cloud workloads while demonstrating Infrastructure as Code principles, cloud networking fundamentals, and AWS security best practices.

---

# Future Improvements

Potential enhancements for future iterations of this project include:

* Deploying Amazon EC2 instances within the public and private subnets.
* Adding an Application Load Balancer (ALB).
* Deploying Amazon RDS within the private subnet.
* Enabling Amazon VPC Flow Logs.
* Integrating Amazon CloudWatch for monitoring and alerting.
* Expanding the architecture to support multiple Availability Zones for improved availability and resilience.

---

# Repository Structure

```text
ICP-DFA28011-2026-REPO/
│
├── Week1/
│   └── README.md
│
├── Week2/
│   ├── README.md
│   ├── provider.tf
│   ├── vpc.tf
│   ├── subnets.tf
│   ├── internet_gateway.tf
│   ├── nat_gateway.tf
│   ├── route_tables.tf
│   ├── security_groups.tf
│   └── outputs.tf
│
└── Week3/
    ├── README.md
    ├── architecture-diagram.png
    └── screenshots/
        ├── terraform-apply.png
        ├── terraform-outputs.png
        ├── vpc.png
        ├── public-subnet.png
        ├── private-subnet.png
        ├── internet-gateway.png
        ├── nat-gateway.png
        ├── route-tables.png
        └── security-groups.png
```

---

# About This Internship

This project was completed as part of the **InternCareerPath Cloud Computing Internship Program**, where I am gaining practical experience in Amazon Web Services (AWS), Terraform, Infrastructure as Code (IaC), cloud networking, and cloud security by designing, deploying, validating, and documenting real-world cloud infrastructure projects.

---

**Author:** Blessing Mbanefoh

**Role:** Cloud Computing Intern

**Focus Areas:** AWS • Terraform • Cloud Security • Infrastructure as Code (IaC) • Cloud Networking
