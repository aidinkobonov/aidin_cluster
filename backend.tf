terraform {
	required_version = ">= 0.9.3"
 	backend "s3" {
		bucket = "aidincluster.com"
		key = "state/aidin_cluster"
		region = "${aws_region}"
		}
	}

