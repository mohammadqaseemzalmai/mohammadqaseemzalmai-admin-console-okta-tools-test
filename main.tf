terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 4.8.0"
    }
  }
}

provider "okta" {
  # org_name = var.org_name
  # base_url = var.base_url
  # client_id = var.client_id
  # private_key_id = var.private_key_id
  # private_key = var.private_key
  scopes = ["okta.groups.manage","okta.users.manage","okta.apps.read","okta.apps.manage"]
}

module "Okta_Group" {
  source = "./Okta-Group-Operations"
}