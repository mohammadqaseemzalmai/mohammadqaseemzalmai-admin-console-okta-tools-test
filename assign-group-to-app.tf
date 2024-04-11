resource "okta_app_group_assignment" "Test-Terraform" {
  app_id   = data.okta_app.Test-Terraform.id
  group_id = okta_group.OAuth.id
  retain_assignment = false
}