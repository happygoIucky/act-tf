terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.202.0"
    }
  }
}

provider "alicloud" {
  	region  = var.region
    shared_credentials_file = "/Users/Jawn Lim/.aliyun/config.json"
    profile                 = "aliprof"

}


