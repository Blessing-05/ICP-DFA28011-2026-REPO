# Week 5 – Project 4 Completion

# Managed MySQL Database Deployment on AWS with Terraform

> **InternCareerPath Cloud Computing Internship Program**

---

# Overview

During Week 5 of the InternCareerPath Cloud Computing Internship Program, I completed the deployment, testing, validation, and optimization of a secure Amazon Relational Database Service (Amazon RDS) PostgreSQL environment using Terraform.

Building upon the infrastructure developed during Week 4, this phase focused on deploying the database infrastructure to AWS, validating that every component functioned correctly, verifying the deployment through the AWS Management Console, and ensuring the environment followed AWS security and operational best practices.

The entire infrastructure was provisioned using Terraform, demonstrating the practical implementation of Infrastructure as Code (IaC) to automate cloud database deployments. Following deployment, the database environment was thoroughly tested to confirm that networking, security, encryption, backups, and database configurations operated as intended.

This project strengthened my understanding of AWS managed database services, Terraform deployment workflows, infrastructure validation, cloud security, and production-ready database architectures.

---

# Project Completion Objectives

The objectives of this phase were to:

* Successfully deploy the Terraform infrastructure to AWS.
* Validate the successful creation of all database resources.
* Verify networking and database configurations.
* Test database connectivity and infrastructure functionality.
* Confirm encryption and backup configurations.
* Review and optimize security configurations.
* Document the completed deployment.
* Demonstrate Infrastructure as Code deployment and validation.
* Prepare the completed project for GitHub publication.

---

# Final Solution Architecture

The completed infrastructure consists of the following AWS resources:

* Amazon Virtual Private Cloud (VPC)
* Private Subnet A
* Private Subnet B
* DB Subnet Group
* Amazon RDS MySQL Database
* Application Security Group
* RDS Security Group
* AWS Key Management Service (AWS KMS) Customer Managed Key

An architecture diagram illustrating the completed deployment is included within this project directory.

---

# Infrastructure Deployment

The database infrastructure was deployed entirely through Terraform without manually provisioning resources in the AWS Management Console.

Terraform automated the creation of every infrastructure component, ensuring the deployment remained consistent, repeatable, and version-controlled while minimizing manual configuration errors.

The deployment followed Infrastructure as Code best practices, enabling reliable and maintainable cloud infrastructure management.

---

# Deployment Workflow

The deployment followed Terraform's standard workflow.

## Terraform Initialization

```bash
terraform init
```

Initializes the working directory and downloads the required AWS provider plugins.

---

## Configuration Validation

```bash
terraform validate
```

Validates the Terraform configuration and checks for syntax or configuration errors before deployment.

---

## Deployment Planning

```bash
terraform plan
```

Generates an execution plan that previews the AWS resources Terraform intends to create or modify.

---

## Infrastructure Deployment

```bash
terraform apply
```

Deploys the complete managed database infrastructure defined within the Terraform configuration.

---

## Infrastructure Cleanup

```bash
terraform destroy
```

Removes all deployed resources when they are no longer required, helping prevent unnecessary AWS charges.

---

# Testing and Validation

Following deployment, several validation checks were performed to verify the successful implementation of the infrastructure.

## Network Validation

Confirmed that the Amazon VPC and private subnets were successfully created.

Verified that the DB Subnet Group correctly included the private subnets across multiple Availability Zones.

---

## Database Validation

Verified that the Amazon RDS PostgreSQL instance was successfully provisioned.

Confirmed the database instance status changed to **Available** after deployment.

Verified that the database was deployed within the configured private subnets.

---

## Security Validation

Reviewed Security Group rules to ensure that MySQL traffic on port **5432** was permitted only from the application security group.

Confirmed that the database was not publicly accessible.

Verified that the Principle of Least Privilege was applied throughout the deployment.

---

## Encryption Validation

Confirmed that storage encryption was enabled.

Verified that the database was configured to use the AWS KMS Customer Managed Key.

---

## Backup Validation

Verified that automated backups were enabled.

Confirmed the backup retention period and backup window matched the project configuration.

---

## Terraform Validation

Verified that Terraform outputs correctly displayed:

* Database endpoint
* Database address
* Database port
* Database name

---

# AWS Console Verification

Deployment evidence has been documented using screenshots captured from the AWS Management Console.

Screenshots included in this project demonstrate:

* Amazon VPC
* Private Subnet A
* Private Subnet B
* DB Subnet Group
* Amazon RDS Instance
* Security Groups
* AWS KMS Key
* Terraform Apply output
* Terraform Outputs

These screenshots confirm that the infrastructure was successfully deployed and configured.

---

# Infrastructure Optimization

Following deployment, the environment was reviewed to ensure it aligned with AWS operational and security best practices.

Optimization activities included:

## Multi-AZ Deployment

Configured the database for Multi-AZ deployment to improve availability and resilience.

---

## Storage Optimization

Configured GP3 storage with storage autoscaling to improve storage efficiency while allowing future capacity growth.

---

## Backup Configuration

Enabled automated backups to improve disaster recovery capabilities.

---

## Encryption

Protected database storage using AWS KMS encryption to safeguard sensitive information.

---

## Secure Networking

Ensured the database remained isolated within private subnets and inaccessible from the public internet.

---

## Security Groups

Restricted inbound traffic to authorized application resources only.

---

# Challenges Encountered

## Challenge 1

Understanding how Amazon RDS integrates with private networking resources such as VPCs, DB Subnet Groups, and Security Groups.

### Solution

Reviewed AWS networking documentation and validated each networking component after deployment to ensure the database operated within the intended architecture.

---

## Challenge 2

Managing Terraform resource dependencies during deployment.

### Solution

Used Terraform resource references and dependency management to ensure that networking components were provisioned before the database instance.

---

## Challenge 3

Understanding encryption and backup configuration for managed databases.

### Solution

Studied AWS documentation on Amazon RDS and AWS KMS to correctly configure storage encryption and automated backup settings.

---

# Skills Demonstrated

This project demonstrates practical experience with:

* Amazon Web Services (AWS)
* Amazon RDS
* PostgreSQL
* Amazon VPC
* AWS KMS
* Terraform
* Infrastructure as Code (IaC)
* Cloud Networking
* Cloud Security
* Database Security
* Infrastructure Validation
* Cloud Infrastructure Optimization
* Git
* GitHub

---

# Key Learning Outcomes

Completing this project strengthened my understanding of:

* Deploying managed PostgreSQL databases using Terraform.
* Validating Infrastructure as Code deployments.
* Securing cloud database environments.
* Implementing encryption and backup strategies.
* Designing highly available database architectures.
* Optimizing managed cloud infrastructure.
* Documenting production-style cloud deployments.

---

# Project Outcome

The project was successfully completed by deploying, validating, testing, and optimizing a secure Amazon RDS PostgreSQL database environment using Terraform.

The completed infrastructure demonstrates production-ready cloud database deployment practices by combining secure networking, encryption, automated backups, high availability, and Infrastructure as Code to build a scalable and maintainable database solution.

---

# Future Improvements

Potential enhancements for future iterations of this project include:

* Deploying an Amazon EC2 application server to connect with the database.
* Implementing AWS Secrets Manager for secure credential management instead of hardcoded database credentials.
* Enabling Enhanced Monitoring and Performance Insights.
* Creating CloudWatch alarms for database performance and availability.
* Configuring read replicas for improved read scalability.
* Implementing automated snapshot management.
* Integrating the deployment into a CI/CD pipeline.

---

# Repository Structure

```text
ICP-DFA28011-2026-REPO/
│
├── Week4/
│   ├── README.md
│   ├── provider.tf
│   ├── vpc_network.tf
│   ├── db_subnet_group.tf
│   ├── security_groups.tf
│   ├── kms.tf
│   ├── rds.tf
│   └── outputs.tf
│
└── Week5/
    ├── README.md
    ├── architecture-diagram.png
    └── screenshots/
        ├── terraform-apply.png
        ├── terraform-outputs.png
        ├── vpc.png
        ├── private-subnets.png
        ├── db-subnet-group.png
        ├── rds-instance.png
        ├── security-groups.png
        └── kms-key.png
```

---

# About This Internship

This project was completed as part of the **InternCareerPath Cloud Computing Internship Program**, where I am building practical experience in Amazon Web Services (AWS), Terraform, Infrastructure as Code (IaC), cloud networking, cloud security, and managed database deployments through hands-on, real-world cloud engineering projects.

---

**Author:** Blessing Mbanefoh

**Role:** Cloud Computing Intern

**Focus Areas:** AWS • Terraform • Amazon RDS • Cloud Security • Infrastructure as Code (IaC) • Cloud Networking
