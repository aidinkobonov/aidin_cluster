resource "aws_autoscaling_group" "bastions-aidincluster-com" {
  name                 = "bastions.aidincluster.com"
  launch_configuration = "${aws_launch_configuration.bastions-aidincluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-aidincluster-com.id}", "${aws_subnet.utility-eu-west-1b-aidincluster-com.id}", "${aws_subnet.utility-eu-west-1c-aidincluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-aidincluster-com" {
  name                 = "master-eu-west-1a.masters.aidincluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-aidincluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-aidincluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-aidincluster-com" {
  name                 = "master-eu-west-1b.masters.aidincluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-aidincluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-aidincluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-aidincluster-com" {
  name                 = "master-eu-west-1c.masters.aidincluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-aidincluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-aidincluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-aidincluster-com" {
  name                 = "nodes.aidincluster.com"
  launch_configuration = "${aws_launch_configuration.nodes-aidincluster-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-aidincluster-com.id}", "${aws_subnet.eu-west-1b-aidincluster-com.id}", "${aws_subnet.eu-west-1c-aidincluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.aidincluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}
resource "aws_launch_configuration" "bastions-aidincluster-com" {
  name_prefix                 = "bastions.aidincluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-aidincluster-com-1d3e75ff5751b061c0b031ff0ec74421.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-aidincluster-com.id}"
  security_groups             = ["${aws_security_group.bastion-aidincluster-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-aidincluster-com" {
  name_prefix                 = "master-eu-west-1a.masters.aidincluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-aidincluster-com-1d3e75ff5751b061c0b031ff0ec74421.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-aidincluster-com.id}"
  security_groups             = ["${aws_security_group.masters-aidincluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.aidincluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-aidincluster-com" {
  name_prefix                 = "master-eu-west-1b.masters.aidincluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-aidincluster-com-1d3e75ff5751b061c0b031ff0ec74421.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-aidincluster-com.id}"
  security_groups             = ["${aws_security_group.masters-aidincluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.aidincluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-aidincluster-com" {
  name_prefix                 = "master-eu-west-1c.masters.aidincluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-aidincluster-com-1d3e75ff5751b061c0b031ff0ec74421.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-aidincluster-com.id}"
  security_groups             = ["${aws_security_group.masters-aidincluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.aidincluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-aidincluster-com" {
  name_prefix                 = "nodes.aidincluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-aidincluster-com-1d3e75ff5751b061c0b031ff0ec74421.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-aidincluster-com.id}"
  security_groups             = ["${aws_security_group.nodes-aidincluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.aidincluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}
resource "aws_autoscaling_attachment" "bastions-aidincluster-com" {
  elb                    = "${aws_elb.bastion-aidincluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-aidincluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-aidincluster-com" {
  elb                    = "${aws_elb.api-aidincluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-aidincluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-aidincluster-com" {
  elb                    = "${aws_elb.api-aidincluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-aidincluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-aidincluster-com" {
  elb                    = "${aws_elb.api-aidincluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-aidincluster-com.id}"
}
