terraform {
  required_providers {
    steampipecloud = {
      source = "turbot/steampipecloud"
    }
  }
}

resource "steampipecloud_workspace_mod" "steampipe_custom_mod_demo" {
  organization = "northerntrust"
  workspace_handle = "auditreports" 
  path = "github.com/judell/steampipe-custom-mod-demo"
  constraint = "v0.1"
}
