# Secure EKS Cluster

This project sets up a secure Amazon EKS (Elastic Kubernetes Service) cluster using Terraform. It is structured into modules for better organization and reusability.

## Project Structure

- **modules/**: Contains reusable Terraform modules.
  - **eks/**: Module for creating the EKS cluster.
  - **vpc/**: Module for creating the Virtual Private Cloud (VPC).
  - **iam/**: Module for creating IAM roles and policies.
  
- **environments/**: Contains environment-specific configurations.
  - **dev/**: Development environment configurations.
  - **staging/**: Staging environment configurations.
  - **prod/**: Production environment configurations.

## Getting Started

### Prerequisites

- Terraform installed on your machine.
- AWS account with appropriate permissions to create EKS, VPC, and IAM resources.

### Setup Instructions

1. Clone the repository:
   ```
   git clone <repository-url>
   cd secure-eks-cluster
   ```

2. Configure your AWS credentials. You can do this by setting environment variables or using the AWS CLI.

3. Navigate to the desired environment directory (e.g., `environments/dev`).

4. Initialize Terraform:
   ```
   terraform init
   ```

5. Review the planned actions:
   ```
   terraform plan
   ```

6. Apply the configuration to create the resources:
   ```
   terraform apply
   ```

### Usage

- Modify the variable files in the `environments` directory to customize your setup.
- Use the modules in the `modules` directory to extend or modify the infrastructure as needed.

## Outputs

After applying the Terraform configuration, you will receive outputs such as the EKS cluster endpoint and IAM role ARNs, which can be used to interact with your EKS cluster.

## License

This project is licensed under the MIT License. See the LICENSE file for details.