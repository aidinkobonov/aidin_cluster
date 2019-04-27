resource "aws_eip" "eu-west-1a-aidincluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1a.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-aidincluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1b.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-aidincluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "aidincluster.com"
    Name                                     = "eu-west-1c.aidincluster.com"
    "kubernetes.io/cluster/aidincluster.com" = "owned"
  }
}