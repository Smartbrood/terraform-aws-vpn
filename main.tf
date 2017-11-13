resource "aws_vpn_gateway" "this" {
  count  = "${var.vpn_enabled ? 1 : 0}"
  vpc_id = "${var.vpc_id}"
  tags   = "${var.tags}"
}

resource "aws_customer_gateway" "primary" {
  count      = "${var.vpn_enabled ? 1 : 0}"
  bgp_asn    = "${var.bgp_asn}"
  ip_address = "${var.cgw_ip_1}"
  type       = "${var.type}"
  tags       = "${var.tags}"
}

resource "aws_customer_gateway" "secondary" {
  count      = "${var.vpn_enabled ? 1 : 0}"
  bgp_asn    = "${var.bgp_asn}"
  ip_address = "${var.cgw_ip_2}"
  type       = "${var.type}"
  tags       = "${var.tags}"
}

resource "aws_vpn_connection" "primary" {
  count               = "${var.vpn_enabled ? 1 : 0}"
  vpn_gateway_id      = "${aws_vpn_gateway.this.id}"
  customer_gateway_id = "${aws_customer_gateway.primary.id}"
  type                = "${var.type}"
  static_routes_only  = "${var.static_routes_only}"
  tags                = "${var.tags}"
}

resource "aws_vpn_connection" "secondary" {
  count               = "${var.vpn_enabled ? 1 : 0}"
  vpn_gateway_id      = "${aws_vpn_gateway.this.id}"
  customer_gateway_id = "${aws_customer_gateway.secondary.id}"
  type                = "${var.type}"
  static_routes_only  = "${var.static_routes_only}"
  tags                = "${var.tags}"
}
