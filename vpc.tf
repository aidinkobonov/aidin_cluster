resource "aws_vpc" "aidincluster-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "aidincluster-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "aidincluster-com" {
  vpc_id          = "${aws_vpc.aidincluster-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.aidincluster-com.id}"
}