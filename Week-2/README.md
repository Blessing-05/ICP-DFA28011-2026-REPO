
---

# Week 2 – Project 1 Development

# Secure AWS VPC Network Architecture with Terraform

> **InternCareerPath Cloud Computing Internship Program**

---

# Overview

During Week 2 of the InternCareerPath Cloud Computing Internship Program, I focused on developing a secure and scalable Virtual Private Cloud (VPC) architecture on Amazon Web Services (AWS) using Terraform.

The primary objective of this project was to strengthen my practical understanding of AWS networking by automating cloud infrastructure using Infrastructure as Code (IaC). Instead of manually provisioning networking resources through the AWS Management Console, I used Terraform to define the infrastructure in code, making deployments repeatable, consistent, and easier to manage.

This project introduced me to designing cloud networking environments similar to those used in production systems. I gained practical experience configuring networking resources, understanding resource dependencies, implementing security controls, and organizing Terraform projects using a modular structure.

---

# Business Problem

Organizations deploying applications to the cloud require a secure and reliable networking environment that isolates workloads, protects sensitive resources, and supports future scalability.

Manually creating cloud infrastructure can introduce configuration inconsistencies, deployment errors, and operational inefficiencies. Infrastructure as Code solves these challenges by allowing infrastructure to be defined, version-controlled, and deployed consistently across environments.

This project addresses these challenges by implementing a secure AWS networking environment through Terraform automation.

---

# Project Objectives

The objectives of this project were to:

* Develop a secure AWS networking environment.
* Gain practical experience using Terraform.
* Understand Infrastructure as Code principles.
* Learn how AWS networking services interact.
* Build reusable cloud infrastructure.
* Apply AWS networking best practices.
* Strengthen cloud security knowledge.

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

## Amazon Virtual Private Cloud (Amazon VPC)

Amazon VPC provides an isolated virtual network where AWS resources can be securely deployed.

Within this project, the VPC serves as the networking foundation by providing:

* Logical network isolation
* Custom IP addressing
* Secure communication
* Resource segmentation

---

## Public Subnets

Public subnets are designed for resources that require direct internet connectivity.

Examples include:

* Web Servers
* Bastion Hosts
* Application Load Balancers

Public subnets communicate with the internet through an Internet Gateway.

---

## Private Subnets

Private subnets are intended for resources that should remain inaccessible from the internet.

Examples include:

* Databases
* Internal APIs
* Backend Application Servers

Using private subnets improves security by reducing exposure to external threats.

---

## Internet Gateway

The Internet Gateway enables communication between resources inside the VPC and the public internet.

This component allows internet-facing workloads to receive incoming requests and access external services.

---

## NAT Gateway

The NAT Gateway enables resources inside private subnets to access the internet without allowing unsolicited inbound connections.

This is commonly used for:

* Installing software updates
* Downloading application packages
* Accessing AWS service endpoints

---

## Route Tables

Route Tables define how network traffic flows inside the VPC.

Different route tables were configured to manage:

* Public subnet routing
* Private subnet routing
* Internet connectivity
* Internal communication

---

## Security Groups

Security Groups act as virtual firewalls for AWS resources.

The project implemented Security Groups to control inbound and outbound network traffic while following the Principle of Least Privilege.

Example rules included:

* SSH (TCP 22)
* HTTP (TCP 80)
* HTTPS (TCP 443)

---

# Infrastructure as Code

Terraform was used to automate the deployment of all networking resources.

Instead of manually configuring services through the AWS Console, every resource was defined within Terraform configuration files.

Infrastructure as Code provides several benefits:

* Faster deployments
* Consistent environments
* Version control
* Easier maintenance
* Reduced human error

---

# Terraform Project Structure

```text
Week2/
├── provider.tf
├── vpc.tf
├── subnets.tf
├── internet_gateway.tf
├── nat_gateway.tf
├── route_tables.tf
├── security_groups.tf
├── outputs.tf
└── README.md
```

---

# Terraform File Overview

## provider.tf

Configured the AWS provider, deployment region, and default resource tags.

---

## vpc.tf

Created the Virtual Private Cloud and established the networking foundation.

---

## subnets.tf

Provisioned public and private subnets across Availability Zones.

---

## internet_gateway.tf

Configured internet access for resources deployed within the public subnet.

---

## nat_gateway.tf

Enabled secure outbound internet access for workloads deployed inside private subnets.

---

## route_tables.tf

Configured routing rules for internet access and internal communication.

---

## security_groups.tf

Implemented firewall rules to protect AWS resources.

---

## outputs.tf

Displayed important deployment information after Terraform successfully provisioned the infrastructure.

---

# Development Process

The project followed a structured Infrastructure as Code workflow.

### Phase 1 — Planning

* Reviewed AWS networking concepts.
* Planned the network architecture.
* Selected Terraform as the deployment tool.

---

### Phase 2 — Infrastructure Development

* Configured the AWS provider.
* Created the VPC.
* Created public and private subnets.
* Configured Internet Gateway.
* Configured NAT Gateway.
* Created Route Tables.
* Implemented Security Groups.

---

### Phase 3 — Validation

* Validated Terraform syntax.
* Reviewed the Terraform execution plan.
* Verified resource dependencies.

---

# Skills Strengthened

This project strengthened practical experience in:

* Amazon Web Services (AWS)
* Amazon VPC
* Cloud Networking
* Infrastructure as Code
* Terraform
* Cloud Security
* Route Tables
* NAT Gateway
* Internet Gateway
* Security Groups
* Git
* GitHub

---

# Challenges Encountered

One of the primary challenges was understanding how AWS networking components depend on one another during deployment.

Initially, it was difficult to understand how resources such as Internet Gateways, Route Tables, NAT Gateways, and Subnets communicate within a VPC.

By studying AWS networking documentation and building the infrastructure incrementally with Terraform, I developed a better understanding of cloud networking architecture and infrastructure dependencies.

---

# Key Learning Outcomes

Throughout this project, I gained practical knowledge of:

* Designing secure AWS network architectures.
* Automating infrastructure deployment with Terraform.
* Structuring Infrastructure as Code projects.
* Managing AWS networking resources.
* Applying cloud security best practices.
* Understanding Terraform resource dependencies.
* Building reusable cloud infrastructure.

---

# Current Progress

At the conclusion of Week 2:

* AWS networking resources were developed using Terraform.
* Infrastructure components were organized using a modular file structure.
* Terraform configurations were validated.
* Documentation was updated to reflect project progress.

The project is now prepared for final testing, security hardening, deployment validation, and architecture documentation during Week 3.

---

# Next Steps

The next phase of the project will focus on:

* Completing infrastructure deployment.
* Performing end-to-end testing.
* Reviewing and improving security configurations.
* Creating an AWS architecture diagram.
* Capturing deployment screenshots.
* Finalizing technical documentation.
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
    └── README.md
```

---

# About This Internship

This project was completed as part of the **InternCareerPath Cloud Computing Internship Program**, where I am building hands-on experience in AWS, Terraform, Infrastructure as Code (IaC), cloud networking, and cloud security through practical, real-world projects.

---

**Author:** Blessing Mbanefoh
**Role:** Cloud Computing Intern
**Focus Areas:** AWS • Terraform • Cloud Security • Infrastructure as Code (IaC) • Cloud Networking


