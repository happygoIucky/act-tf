terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.202.0"
    }
  }
}

provider "alicloud" {
#  	region  = "ap-southeast-1"
#    shared_credentials_file = "/Users/Jawn Lim/.aliyun/config.json"
#    profile                 = "aliprof"
#    configuration_source = "terraform-provider-alicloud/examples/vpc"

}

resource "alicloud_vpc" "vpc" {
  vpc_name   = "tf_test_jl"
  cidr_block = "172.16.0.0/12"
}
