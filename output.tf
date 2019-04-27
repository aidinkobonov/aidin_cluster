output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-aidincluster-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-aidincluster-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-aidincluster-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-aidincluster-com.name}"
}

output "cluster_name" {
  value = "aidincluster.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-aidincluster-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-aidincluster-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-aidincluster-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-aidincluster-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-aidincluster-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-aidincluster-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-aidincluster-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-aidincluster-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-aidincluster-com.id}", "${aws_subnet.eu-west-1b-aidincluster-com.id}", "${aws_subnet.eu-west-1c-aidincluster-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-aidincluster-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-aidincluster-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-aidincluster-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-aidincluster-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-aidincluster-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.aidincluster-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-aidincluster-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-aidincluster-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-aidincluster-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-aidincluster-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-aidincluster-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-aidincluster-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.aidincluster-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.aidincluster-com.id}"
}