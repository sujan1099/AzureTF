✅ Pre-Requisites
Before starting, ensure you have:

An active Azure Subscription

Terraform installed

Git installed

Visual Studio Code (optional but recommended)


📥 Step 1: Clone the Repository
https://github.com/sujan1099/AzureTF.git

git clone https://github.com/sujan1099/AzureTF.git
cd AzureTF

Minimize image
Edit image
Delete image
Add a caption (optional)
This will download the Terraform configuration files to your local machine.


⚙️ Step 2: Install Terraform
Download Terraform from the official HashiCorp website:

https://developer.hashicorp.com/terraform/downloads

Verify installation:

terraform -version


🔐 Step 3: Create Azure Service Principal
Terraform needs authentication to deploy resources.

Create a Service Principal:
az ad sp create-for-rbac --name terraform-sp --role Contributor --scopes /subscriptions/<your-subscription-id>

This will return:

client_id

client_secret

tenant_id

subscription_id

Store these securely.


🔑 Step 4: Configure Authentication (Environment Variables)
On Linux / Git Bash:
export ARM_CLIENT_ID="xxxx"
export ARM_CLIENT_SECRET="xxxx"
export ARM_SUBSCRIPTION_ID="xxxx"
export ARM_TENANT_ID="xxxx"

Terraform automatically reads these values.


🔑 Step 5: Generate SSH Key
From VS Code terminal or Git Bash:

ssh-keygen

Copy the public key:

cat ~/.ssh/id_rsa.pub

Paste this public key into the Terraform configuration file where required.

Note: If public key is not placed you face error as shown below.

Minimize image
Edit image
Delete image
Add a caption (optional)

🚀 Step 6: Deploy Using Terraform Commands
Initialize Terraform
terraform init

Minimize image
Edit image
Delete image
Add a caption (optional)
Downloads Azure provider plugins.

Validate Configuration 
terraform validate

Plan Deployment


terraform plan
Shows what resources will be created before deployment.

Minimize image
Edit image
Delete image
Add a caption (optional)
Apply Deployment
terraform apply

Type yes when prompted.

Terraform will now:

Create Resource Group

Create VNet & Subnet

Create NSG

Create Public IP

Deploy Azure Linux VM

Within minutes, your VM will be ready.


🖥 How to Verify in Azure Portal
Go to Azure Portal

Navigate to Resource Group

Check all deployed resources

Copy Public IP

Connect using SSH:

ssh adminuser@<public-ip>


