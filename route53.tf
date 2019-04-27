resource "aws_route53_record" "api-aidincluster-com" {
  name = "api.aidincluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-aidincluster-com.dns_name}"
    zone_id                = "${aws_elb.api-aidincluster-com.zone_id}"
    evaluate_target_health = false
    zone_id = "/hostedzone/Z3F96YL8YVEKVE"
}
resource "aws_route53_record" "bastion-aidincluster-com" {
  name = "bastion.aidincluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-aidincluster-com.dns_name}"
    zone_id                = "${aws_elb.bastion-aidincluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z3F96YL8YVEKVE"
}

resource "aws_route53_zone_association" "Z3F96YL8YVEKVE" {
  zone_id = "/hostedzone/Z3F96YL8YVEKVE"
  vpc_id  = "${aws_vpc.aidincluster-com.id}"
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

}