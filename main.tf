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
  client_id = "0oacwito98vDGtfWV697"
  private_key_id = "usyWR7kafat8WHLmA3YkcyEkDn0orkGxIbJaAa7Z8pQ"
  private_key = var.private_key
  scopes = ["okta.groups.manage","okta.users.manage","okta.apps.read","okta.apps.manage"]
}