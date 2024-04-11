resource "okta_group" "Terraform-TEST" {
    name        = "Terraform-TEST"
    description = "Terrafrom TEST Group Description"
}


resource "okta_group" "Terraform-TEST1" {
    name        = "Terraform-TEST1"
    description = "Terrafrom TEST1 Group Description"
}

resource "okta_group" "AAA_NewGroup" {
  name = "AAA_NewGroup"
}