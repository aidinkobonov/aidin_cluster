resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.aidincluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.aidincluster-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-aidincluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-aidincluster-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-aidincluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-aidincluster-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-aidincluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-aidincluster-com.id}"
}

resource "aws_route_table" "aidincluster-com" {
  vpc_id = "${aws_vpc.aidincluster-com.id}"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/kops/role"                = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-aidincluster-com" {
  vpc_id = "${aws_vpc.aidincluster-com.id}"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "private-eu-west-1a.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/kops/role"                = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-aidincluster-com" {
  vpc_id = "${aws_vpc.aidincluster-com.id}"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "private-eu-west-1b.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/kops/role"                = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-aidincluster-com" {
  vpc_id = "${aws_vpc.aidincluster-com.id}"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "private-eu-west-1c.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/kops/role"                = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-aidincluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-aidincluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-aidincluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-aidincluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-aidincluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-aidincluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-aidincluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-aidincluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-aidincluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-aidincluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-aidincluster-com.id}"
  route_table_id = "${aws_route_table.aidincluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-aidincluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-aidincluster-com.id}"
  route_table_id = "${aws_route_table.aidincluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-aidincluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-aidincluster-com.id}"
  route_table_id = "${aws_route_table.aidincluster-com.id}"
}



