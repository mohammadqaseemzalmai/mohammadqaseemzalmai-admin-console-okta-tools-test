terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 4.8.0"
    }
  }
}

provider "okta" {
  org_name = "smartnews"
  base_url = "okta.com"
  client_id = var.client_id
  private_key_id = var.private_key_id
  private_key = var.private_key
  scopes = ["okta.groups.manage","okta.users.manage","okta.apps.read","okta.apps.manage"]
}