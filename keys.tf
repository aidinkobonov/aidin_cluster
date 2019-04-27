resource "aws_key_pair" "kubernetes-aidincluster-com-1d3e75ff5751b061c0b031ff0ec74421" {
  key_name   = "kubernetes.aidincluster.com-1d:3e:75:ff:57:51:b0:61:c0:b0:31:ff:0e:c7:44:21"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.aidincluster.com-1d3e75ff5751b061c0b031ff0ec74421_public_key")}"
}