variable "vpn_enabled" {
  description = "For ability to disable VPN creation in upper level modules. It seems modules doesn't support count parameter for now"
  default     = "true"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "cgw_ip" {
  description = "Customer gateway ip"
}

variable "bgp_asn" {
  description = "BGP ASN for the VPN"
  default     = "65000"
}

variable "type" {
  description = "VPN type"
  default     = "ipsec.1"
}

variable "static_routes_only" {
  description = "Enable static routes only"
  default     = "false"
}

variable "tags" {
  type = "map"
  description = "Tags for VPN resources"
}




