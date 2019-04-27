resource "aws_internet_gateway" "aidincluster-com" {
  vpc_id = "${aws_vpc.aidincluster-com.id}"

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}