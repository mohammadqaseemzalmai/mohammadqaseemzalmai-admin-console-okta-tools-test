resource "okta_group" "Terraform-TEST" {
    name        = "Terraform-TEST"
    description = "Test group for Terraform TEST"
}


resource "okta_group" "Terraform-TEST1" {
    name                      = "Terraform-TEST1"
}