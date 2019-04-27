resource "aws_iam_instance_profile" "bastions-aidincluster-com" {
  name = "bastions.aidincluster.com"
  role = "${aws_iam_role.bastions-aidincluster-com.name}"
}

resource "aws_iam_instance_profile" "masters-aidincluster-com" {
  name = "masters.aidincluster.com"
  role = "${aws_iam_role.masters-aidincluster-com.name}"
}

resource "aws_iam_instance_profile" "nodes-aidincluster-com" {
  name = "nodes.aidincluster.com"
  role = "${aws_iam_role.nodes-aidincluster-com.name}"
}

resource "aws_iam_role" "bastions-aidincluster-com" {
  name               = "bastions.aidincluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.aidincluster.com_policy")}"
}

resource "aws_iam_role" "masters-aidincluster-com" {
  name               = "masters.aidincluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.aidincluster.com_policy")}"
}

resource "aws_iam_role" "nodes-aidincluster-com" {
  name               = "nodes.aidincluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.aidincluster.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-aidincluster-com" {
  name   = "bastions.aidincluster.com"
  role   = "${aws_iam_role.bastions-aidincluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.aidincluster.com_policy")}"
}

resource "aws_iam_role_policy" "masters-aidincluster-com" {
  name   = "masters.aidincluster.com"
  role   = "${aws_iam_role.masters-aidincluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.aidincluster.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-aidincluster-com" {
  name   = "nodes.aidincluster.com"
  role   = "${aws_iam_role.nodes-aidincluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.aidincluster.com_policy")}"
}