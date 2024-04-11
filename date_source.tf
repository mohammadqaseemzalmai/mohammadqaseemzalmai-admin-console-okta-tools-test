data "okta_app" "Test-Terraform" {
  label = "Test-Terraform"
}


output "Test-Terraform" {
  value = {
    id = data.okta_app.Test-Terraform.id
    label = data.okta_app.Test-Terraform.label
    description = data.okta_app.Test-Terraform.label
  }
}