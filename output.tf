output "primary_gateway_configuration" {
  description = "The configuration information for the VPN connection's customer gateway"
  value = "${aws_vpn_connection.primary.*.customer_gateway_configuration}"
}

output "secondary_gateway_configuration" {
  description = "The configuration information for the VPN connection's customer gateway"
  value = "${aws_vpn_connection.secondary.*.customer_gateway_configuration}"
}


