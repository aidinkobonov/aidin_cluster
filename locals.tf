locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-aidincluster-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-aidincluster-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-aidincluster-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-aidincluster-com.name}"
  cluster_name                      = "aidincluster.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-eu-west-1a-masters-aidincluster-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-aidincluster-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-aidincluster-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-aidincluster-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-aidincluster-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-aidincluster-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-aidincluster-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-aidincluster-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.eu-west-1a-aidincluster-com.id}", "${aws_subnet.eu-west-1b-aidincluster-com.id}", "${aws_subnet.eu-west-1c-aidincluster-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-aidincluster-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-aidincluster-com.name}"
  region                            = "eu-west-1"
  route_table_private-eu-west-1a_id = "${aws_route_table.private-eu-west-1a-aidincluster-com.id}"
  route_table_private-eu-west-1b_id = "${aws_route_table.private-eu-west-1b-aidincluster-com.id}"
  route_table_private-eu-west-1c_id = "${aws_route_table.private-eu-west-1c-aidincluster-com.id}"
  route_table_public_id             = "${aws_route_table.aidincluster-com.id}"
  subnet_eu-west-1a_id              = "${aws_subnet.eu-west-1a-aidincluster-com.id}"
  subnet_eu-west-1b_id              = "${aws_subnet.eu-west-1b-aidincluster-com.id}"
  subnet_eu-west-1c_id              = "${aws_subnet.eu-west-1c-aidincluster-com.id}"
  subnet_utility-eu-west-1a_id      = "${aws_subnet.utility-eu-west-1a-aidincluster-com.id}"
  subnet_utility-eu-west-1b_id      = "${aws_subnet.utility-eu-west-1b-aidincluster-com.id}"
  subnet_utility-eu-west-1c_id      = "${aws_subnet.utility-eu-west-1c-aidincluster-com.id}"
  vpc_cidr_block                    = "${aws_vpc.aidincluster-com.cidr_block}"
  vpc_id                            = "${aws_vpc.aidincluster-com.id}"
}