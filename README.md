## 📘 Objective
This project demonstrates how to use a Dockerized environment with **Terraform** and **Azure CLI** to deploy Azure infrastructure. The container mounts your local `.tf` files and runs Terraform commands inside an isolated, portable environment.
## 🧰 Tools Used
- Docker
- Terraform
- Azure CLI
- Bash
- Azure Subscription
## 📁 Folder Structure
terraform-azure-docker/

│

├── Dockerfile

├── entrypoint.sh

├── main.tf

└── README.md
## Dockerfile
- Based on `ubuntu:latest`
- Installs:
  - Terraform
  - Azure CLI
  - Required tools: `curl`, `unzip`, `gnupg`, etc.

`docker build -t terraform-azure-env .`

`docker run -it --rm -v $(pwd):/workspace terraform-azure-env`

## Terraform Deployment
`main.tf` deploys:
   - A resource group devops-test-rg in east-us
#### inside container:
`az login --use-device-code`

  `terraform init`

  `terraform plan`

  `terraform apply -auto-approve`
####   Cleanup command:
`terraform destroy -auto-approve`
#### 💡 Notes
- add your Azure Subcription_ID in `main.tf`
- Use az login --use-device-code if browser access is not available inside Docker. it will give URL and one code. copy it and paste to browser, it will ask for authenticate with your Azure account.
- Ensure you have Docker and an active Azure subscription.
