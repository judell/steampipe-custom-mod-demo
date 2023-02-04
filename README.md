# Install a custom Steampipe Cloud dashboard

1. Fork this repo in GitHub.

2. Clone your fork from GitHub to your local machine: `git clone https://github.com/{YOUR_GITHUB_HANDLE}/steampipe-custom-mod-demo`.

3. `cd steampipe-custom-mod-demo` in your local fork.

4. Use [steampipe login](https://steampipe.io/docs/reference/cli/login) (if you haven't already) to create an access token.

5. In your local fork, run `steampipe dashboard` and visit [http://localhost:9194/steampipe_custom_mod_demo.dashboard.test](http://localhost:9194/steampipe_custom_mod_demo.dashboard.test) to verify that the mod runs locally.

6. In your local fork, run `steampipe dashboard --share steampipe_custom_mod_demo.dashboard.test` to verify that you can upload a snapshot of the dashboard to Steampipe Cloud.

7. In `mod.tf` change the workspace handle to your personal workspace handle, and change the path to point to your fork.

8. `git commit -m "initialize my custom mod"`

9. `git tag v0.1`

10. `git push origin main`

11. `git push origin v0.1`

12. Install Terraform (if needed).

13. Run `terraform init`. The output should include "Terraform has been successfully initialized!"

14. Run `terraform plan`. The output should include:

```
Terraform will perform the following actions:

  # steampipecloud_workspace_mod.steampipe_custom_mod_demo will be created
  + resource "steampipecloud_workspace_mod" "steampipe_custom_mod_demo" {
      + alias             = (known after apply)
      + constraint        = "v0.1"
      + created_at        = (known after apply)
      + created_by        = (known after apply)
      + details           = (known after apply)
      + id                = (known after apply)
      + identity_id       = (known after apply)
      + installed_version = (known after apply)
      + organization      = (known after apply)
      + path              = "github.com/{YOUR_GITHUB_HANDLE}/steampipe-custom-mod-demo"
      + state             = (known after apply)
      + updated_at        = (known after apply)
      + updated_by        = (known after apply)
      + version_id        = (known after apply)
      + workspace_handle  = "{YOUR_SPC_WORKSPACE}"
      + workspace_id      = (known after apply)
      + workspace_mod_id  = (known after apply)
    }
```

15. Run `terraform apply`. The output should include: "Apply complete! Resources: 1 added, 0 changed, 0 destroyed."

16. Visit your Steampipe Cloud workspace at an URL like `https://cloud.steampipe.io/user/{YOUR_SPC_HANDLE}/workspace/{YOUR_SPC_WORKSPACE}/dashboard/steampipe_custom_mod_demo.dashboard.test`

