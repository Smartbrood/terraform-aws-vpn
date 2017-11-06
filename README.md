terraform-aws-vpn
=================

Terraform module to setup VPN connection


Usage
-----

```hcl
module "vpn" {
  source   = "Smartbrood/vpn/aws"
  vpc_id   = "${var.vpc_id}"
  cgw_ip   = "${var.cgw_ip}"
  bgp_asn  = "${var.bgp_asn}"
}
```


Authors
-------

Module managed by [Smartbrood LLC](https://github.com/Smartbrood).


License
-------

Apache 2 Licensed. See LICENSE for full details.
