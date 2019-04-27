terraform {
 	backend "s3" {
		bucket = "aidincluster.com"
		key = "state/aidin_cluster"
		region = "eu-west-1"
		}
	}

