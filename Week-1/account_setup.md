# AWS Account & Development Environment Setup

## Overview

This document outlines the preparation and configuration activities completed during Week 1 of the InternCareerPath Cloud Computing Self-Learning Internship Program.

The objective of this phase was to establish a secure and well-organized cloud development environment before beginning infrastructure deployment. Preparing the environment in advance helps reduce configuration issues, promotes security best practices, and ensures a consistent workflow throughout the internship.

---

# AWS Account Preparation

An AWS account was prepared for use throughout the internship. The account will serve as the primary cloud environment for provisioning, managing, and testing cloud infrastructure.

The following best practices were considered during setup:

- Accessing cloud resources through the AWS Management Console.
- Using AWS Identity and Access Management (IAM) for administrative activities instead of relying on the root account.
- Planning deployments within a consistent AWS Region to maintain resource organization.
- Monitoring resource usage to minimize unnecessary costs during project implementation.

---

# Identity and Access Management (IAM)

AWS Identity and Access Management (IAM) provides secure control over access to AWS resources.

For this internship, IAM will be used to:

- Manage authenticated access to AWS services.
- Apply the Principle of Least Privilege.
- Separate administrative activities from the root account.
- Improve overall cloud security.

Following IAM best practices helps reduce the risk of accidental configuration changes and unauthorized access.

---

# Local Development Environment

The local workstation was prepared to support Infrastructure as Code (IaC) development and cloud resource management.

The following tools were installed and verified:

| Tool | Purpose |
|-------|----------|
| Visual Studio Code | Source code editor used for Terraform development and documentation |
| Git | Version control for tracking project changes |
| GitHub | Remote repository hosting and collaboration |
| Terraform | Infrastructure as Code tool for provisioning AWS resources |
| AWS CLI *(if installed)* | Command-line interface for interacting with AWS services |

These tools form the primary development environment that will be used throughout the internship.

---

# Git & GitHub Configuration

A GitHub repository was created using the repository name provided in the internship instructions.

Git was initialized locally to enable version control throughout the project lifecycle.

The repository will be updated regularly using Git commits to maintain a complete history of project development.

---

# Repository Organization

To comply with the internship submission requirements, the repository has been organized into dedicated weekly folders.

This structure promotes clear documentation, easier navigation, and systematic project tracking throughout the six-week internship.


```text
ICP-DFA28011-2026-REPO
│
├── README.md
├── Week1
├── Week2
├── Week3
├── Week4
├── Week5
└── Week6
```
