terraform {
  required_providers {
    steampipecloud = {
      source = "turbot/steampipecloud"
    }
  }
}

resource "steampipecloud_workspace_mod" "steampipe_custom_mod_demo" {
  workspace_handle = "personal"  # use your personal workspace handle
  path = "github.com/judell/steampipe-custom-mod-demo"
  constraint = "v0.1"
}
