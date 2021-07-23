# aws-terraform-example

```sh
terraform init
```

Initializing, download the required packages

```sh
terraform plan -out ec2.tfplan
```

Defines and specifies which resources will be created and its relationships

```sh
terraform apply "ec2.tfplan"
```

Applies the plan and actually make the deployment

```sh
terraform destroy
```
Destroys the resources.