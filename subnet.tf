resource "aws_subnet" "eu-west-1a-aidincluster-com" {
  vpc_id            = "${aws_vpc.aidincluster-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1a.aidincluster.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "eu-west-1b-aidincluster-com" {
  vpc_id            = "${aws_vpc.aidincluster-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1b.aidincluster.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "eu-west-1c-aidincluster-com" {
  vpc_id            = "${aws_vpc.aidincluster-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1c.aidincluster.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-aidincluster-com" {
  vpc_id            = "${aws_vpc.aidincluster-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "utility-eu-west-1a.aidincluster.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-aidincluster-com" {
  vpc_id            = "${aws_vpc.aidincluster-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "utility-eu-west-1b.aidincluster.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-aidincluster-com" {
  vpc_id            = "${aws_vpc.aidincluster-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "utility-eu-west-1c.aidincluster.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}