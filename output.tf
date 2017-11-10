output "customer_gateway_configuration" {
  description = "The configuration information for the VPN connection's customer gateway"
  value = "${aws_vpn_connection.this.*.customer_gateway_configuration}"
}


