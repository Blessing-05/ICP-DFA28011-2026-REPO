# Week 4 – Project 4 Development

# Managed MySQL Database Deployment on AWS with Terraform

> **InternCareerPath Cloud Computing Internship Program**

---

# Overview

During Week 4 of the InternCareerPath Cloud Computing Internship Program, I focused on designing and developing a secure, production-style managed MySQL database infrastructure on Amazon Web Services (AWS) using Terraform.

The primary objective of this project was to automate the deployment of an Amazon Relational Database Service (Amazon RDS) MySQL instance while implementing cloud security, high availability, encryption, and Infrastructure as Code (IaC) best practices.

Unlike traditional database deployments that require manual configuration, this project provisions the entire database environment using Terraform. This approach ensures that the infrastructure is repeatable, version-controlled, and consistently deployed across environments.

The project also introduced several AWS database best practices, including deploying the database within private subnets, enabling Multi-AZ availability, encrypting storage with AWS Key Management Service (AWS KMS), and restricting database access through Security Groups.

---

# Business Problem

Modern applications depend on secure, reliable, and highly available databases to store business-critical information.

Manually provisioning database infrastructure increases the risk of inconsistent configurations, security vulnerabilities, and deployment errors.

Organizations require database environments that provide:

* High availability
* Secure network isolation
* Data encryption
* Automated backups
* Controlled network access
* Consistent deployments

Infrastructure as Code addresses these challenges by automating infrastructure provisioning while ensuring every deployment follows the same configuration and security standards.

This project demonstrates how Terraform can be used to deploy a production-ready managed database environment on AWS.

---

# Project Objectives

The objectives of this project were to:

* Deploy an Amazon RDS MySQL database using Terraform.
* Build a secure networking environment for database workloads.
* Configure private subnets across multiple Availability Zones.
* Implement secure Security Group rules.
* Enable encryption at rest using AWS KMS.
* Configure automated database backups.
* Apply Infrastructure as Code best practices.
* Strengthen practical cloud database administration skills.

---

# Technologies Used

### Cloud Platform

* Amazon Web Services (AWS)

### Infrastructure as Code

* Terraform

### Development Tools

* Visual Studio Code
* Git
* GitHub

---

# AWS Services Used

The following AWS services were implemented during this project.

## Amazon Relational Database Service (Amazon RDS)

Amazon RDS provides a fully managed relational database service that simplifies database administration while improving scalability, reliability, and availability.

Within this project, Amazon RDS provides:

* Managed MySQL database
* Automated backups
* High availability
* Automated maintenance
* Storage scaling

---

## Amazon Virtual Private Cloud (Amazon VPC)

Amazon VPC provides network isolation for AWS resources.

The VPC serves as the networking foundation for the database environment by providing:

* Private networking
* Secure resource isolation
* Custom IP addressing
* Controlled network communication

---

## Private Subnets

Two private subnets were deployed across separate Availability Zones.

Hosting the database within private subnets prevents direct internet access and improves the overall security posture of the infrastructure.

---

## DB Subnet Group

The DB Subnet Group combines multiple private subnets into a logical group used by Amazon RDS for Multi-AZ deployments.

This allows the database to remain highly available across different Availability Zones.

---

## Security Groups

Security Groups were configured to enforce strict network access.

Database connections are only permitted from the application security group using PostgreSQL port **5432**, preventing unauthorized access from the public internet.

---

## AWS Key Management Service (AWS KMS)

AWS KMS was used to create a customer-managed encryption key for encrypting database storage.

Using customer-managed keys improves security by allowing greater control over encryption and key rotation.

---

# Infrastructure as Code

Terraform was used to provision every infrastructure component within this project.

Instead of manually configuring AWS resources, the entire database environment was defined as code, enabling:

* Automated deployments
* Version-controlled infrastructure
* Consistent environments
* Reduced human error
* Simplified infrastructure management

---

# Terraform Project Structure

```text
project4-terraform/
├── provider.tf
├── vpc_network.tf
├── db_subnet_group.tf
├── security_groups.tf
├── kms.tf
├── rds.tf
├── outputs.tf
└── README.md
```

---

# Terraform File Overview

## provider.tf

Configured the AWS provider, deployment region, Terraform version requirements, and default resource tags.

---

## vpc_network.tf

Created the Virtual Private Cloud and provisioned two private subnets across separate Availability Zones.

---

## db_subnet_group.tf

Configured the database subnet group required for Multi-AZ database deployment.

---

## security_groups.tf

Implemented Security Groups to restrict database connectivity and allow PostgreSQL traffic only from the application tier.

---

## kms.tf

Created an AWS KMS Customer Managed Key and alias used for encrypting the database storage.

---

## rds.tf

Provisioned the Amazon RDS PostgreSQL database instance with:

* Multi-AZ deployment
* Storage encryption
* Automated backups
* GP3 storage
* Storage autoscaling
* Private networking
* Security Group integration

---

## outputs.tf

Displayed important deployment information including:

* Database endpoint
* Database address
* Database port
* Database name

---

# Development Process

The project followed a structured Infrastructure as Code workflow.

### Phase 1 — Planning

* Reviewed AWS RDS architecture.
* Studied AWS database security best practices.
* Planned the network architecture.
* Selected Terraform for infrastructure deployment.

---

### Phase 2 — Infrastructure Development

* Configured the AWS provider.
* Created the VPC.
* Provisioned private subnets.
* Configured the DB Subnet Group.
* Created Security Groups.
* Configured AWS KMS encryption.
* Deployed the PostgreSQL database instance.
* Generated Terraform outputs.

---

### Phase 3 — Validation

* Validated Terraform configuration.
* Reviewed execution plans.
* Verified resource dependencies.
* Confirmed infrastructure readiness before deployment.

---

# Security Implementation

Security was a major focus throughout the project.

The database environment was secured by implementing:

* Private subnet deployment
* Database isolation from the public internet
* Security Group restrictions
* Encryption at rest using AWS KMS
* Principle of Least Privilege
* Automated backups
* Multi-AZ high availability

These controls help improve confidentiality, availability, and resilience.

---

# Skills Strengthened

This project strengthened practical experience in:

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
* Git
* GitHub

---

# Challenges Encountered

One of the primary challenges was understanding how multiple AWS services interact during a managed database deployment.

Building a secure database environment required understanding relationships between VPCs, private subnets, DB Subnet Groups, Security Groups, KMS encryption, and Amazon RDS.

By studying AWS documentation and incrementally building the infrastructure with Terraform, I developed a stronger understanding of secure cloud database architecture and resource dependencies.

---

# Key Learning Outcomes

Throughout this project, I gained practical knowledge of:

* Deploying managed PostgreSQL databases on AWS.
* Designing secure database architectures.
* Configuring private networking.
* Implementing storage encryption using AWS KMS.
* Automating database deployments with Terraform.
* Applying cloud security best practices.
* Structuring Infrastructure as Code projects.
* Understanding AWS database networking.

---

# Current Progress

At the conclusion of Week 4:

* Database infrastructure was developed using Terraform.
* Secure networking components were configured.
* Storage encryption was implemented.
* Database security policies were applied.
* Terraform configurations were validated.
* Documentation was updated to reflect project progress.

The project is now prepared for deployment validation, testing, architecture documentation, and completion reporting during the next phase.

---

# Next Steps

The next phase of the project will focus on:

* Deploying the infrastructure to AWS.
* Verifying Amazon RDS creation.
* Testing database connectivity.
* Reviewing security configurations.
* Capturing AWS Console screenshots.
* Creating an architecture diagram.
* Documenting deployment validation.
* Publishing the completed project to GitHub.

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
│   ├── Terraform Files
│   └── ...
│
├── Week3/
│   ├── README.md
│   ├── Architecture Diagram
│   └── Screenshots
│
└── Week4/
    ├── README.md
    ├── provider.tf
    ├── vpc_network.tf
    ├── db_subnet_group.tf
    ├── security_groups.tf
    ├── kms.tf
    ├── rds.tf
    └── outputs.tf
```

---

# About This Internship

This project was completed as part of the **InternCareerPath Cloud Computing Internship Program**, where I am building hands-on experience in Amazon Web Services (AWS), Terraform, Infrastructure as Code (IaC), cloud networking, cloud security, and managed database deployments through practical, real-world cloud engineering projects.

---

**Author:** Blessing Mbanefoh

**Role:** Cloud Computing Intern

**Focus Areas:** AWS • Terraform • Amazon RDS • Cloud Security • Infrastructure as Code (IaC) • Cloud Networking
