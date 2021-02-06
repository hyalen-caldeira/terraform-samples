module "terraform_state_backend" {
  source = "./modules/backend"

  namespace  = "my-app-or-company-name"
  stage      = "dev"
  name       = "infrastructure-tf"
  attributes = ["state"]

  terraform_backend_config_file_path = "."
  terraform_backend_config_file_name = "backend.tf"
  force_destroy                      = false
}