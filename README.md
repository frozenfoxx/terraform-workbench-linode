# terraform-workbench-linode

Deploy a Linux workbench server in Linode.

# Requirements

* a Linode account.
* the `linode_sshkey` resource is handled elsewhere.

# Usage

To use this module, in your `main.tf` TerraForm code for a deployment insert the following:

``` code
module "workbench" {
  source = "github.com/frozenfoxx/terraform-workbench-linode"

  authorized_keys          = ["${linode_sshkey.terraform.ssh_key}"]
  fqdn                     = var.fqdn
  image                    = var.image
  name                     = "workbench"
  private_key              = chomp(file(var.private_ssh_key))
  region                   = var.region
  type                     = var.type
}
```
