variable aws_region {
  type        = string
  default     = "us-east-2"
  description = "default aws region"
}


variable name {
  type        = string
  default     = "hashcat_box"
  description = "name of server"
}

variable ami  {
  type        = string
  default     = ""
  description = "ubuntu AMI"
}

variable instance_type {
  type        = string
  default     = "g4dn.2xlarge"
  description = "instance type"
}
