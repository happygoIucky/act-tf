terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.202.0"
    }
  }
}

provider "alicloud" {
  	region  = "ap-southeast-1"
    shared_credentials_file = "/Users/Jawn Lim/.aliyun/config.json"
    profile                 = "aliprofz"

}

variable "name" {
  default = "terraform-example-jl"
}

resource "alicloud_vpc" "default" {
  ipv6_isp    = "BGPz"
  description = "test"
  cidr_block  = "10.0.0.0/8"
  vpc_name    = var.name
  enable_ipv6 = true
}
