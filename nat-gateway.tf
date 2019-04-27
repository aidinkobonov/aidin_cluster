resource "aws_nat_gateway" "eu-west-1a-aidincluster-com" {
  allocation_id = "${aws_eip.eu-west-1a-aidincluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-aidincluster-com.id}"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1a.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}
resource "aws_nat_gateway" "eu-west-1b-aidincluster-com" {
  allocation_id = "${aws_eip.eu-west-1b-aidincluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-aidincluster-com.id}"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1b.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-aidincluster-com" {
  allocation_id = "${aws_eip.eu-west-1c-aidincluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-aidincluster-com.id}"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1c.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}