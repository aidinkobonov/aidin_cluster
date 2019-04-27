resource "aws_elb" "api-aidincluster-com" {
  name = "api-aidincluster-com-h1m6s3"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-aidincluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-aidincluster-com.id}", "${aws_subnet.utility-eu-west-1b-aidincluster-com.id}", "${aws_subnet.utility-eu-west-1c-aidincluster-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "aidincluster.com"
    Name              = "api.aidincluster.com"
  }
}

resource "aws_elb" "bastion-aidincluster-com" {
  name = "bastion-aidincluster-com-hsunrp"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-aidincluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-aidincluster-com.id}", "${aws_subnet.utility-eu-west-1b-aidincluster-com.id}", "${aws_subnet.utility-eu-west-1c-aidincluster-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "aidincluster.com"
    Name              = "bastion.aidincluster.com"
  }
}
