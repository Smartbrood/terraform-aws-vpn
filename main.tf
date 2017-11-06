resource "aws_vpn_gateway" "this" {
  vpc_id = "${var.vpc_id}"
  tags   = "${var.tags}"
}

resource "aws_customer_gateway" "this" {
  bgp_asn    = "${var.bgp_asn}"
  ip_address = "${var.cgw_ip}"
  type       = "${var.type}"
  tags       = "${var.tags}"
}

resource "aws_vpn_connection" "this" {
  vpn_gateway_id      = "${aws_vpn_gateway.this.id}"
  customer_gateway_id = "${aws_customer_gateway.this.id}"
  type                = "${var.type}"
  static_routes_only  = "${var.static_routes_only}"
  tags                = "${var.tags}"
}
