variable "vpc_cidr_block" {
  description = "CIDR block for the VPC network"
  default     = "10.1.0.0/16"
  type        = string
}
variable "namespace" {
  description = "Namespace for resource names"
  default     = "lineaje"
  type        = string
}
variable "scenario" {
  description = "Scenario name for tags"
  default     = "scenario-ecs-ec2"
  type        = string
}

variable "environment" {
  description = "Environment for deployment (like dev or staging)"
  default     = "dev1"
  type        = string
}

variable "az_count" {
  description = "Describes how many availability zones are used"
  default     = 2
  type        = number
}

variable "instance_type" {
  description = "Instance type for EC2"
  default     = "t3.micro"
  type        = string
}

variable "public_ec2_key" {
  description = "Public key for SSH access to EC2 instances"
  default	= "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8XRdUYQ0/tSIJHW2wisvqTuWK4PnCDKVOkxrncxSAPlmsNREH4IUOKnXOUykUpk4o/C2wUDdCR2V/xrzXWLllxCRLyS9z2/+W4BN6QQodcYOckyi7H7/HlU+JybyhB28cGEvE/2FvFen/lOhf8N+NJ4KO0pKJLy778LdBCUfzPtmEcAAtoS2w13Rogj3rciCtq5TTmdUgDj3yDhUGgE+CTmXZxOqGekGtSlxDQBp7SfgWYpBsEe1R3Wpx6LGgFwcsFMgx5p4xPrufMBuPvrvKjHA44FY9dhmuw5h2CQi/DPyNs64bkt8n1WC+s/Q9U/ohPd04lsV1xJNX/zWAl4fYWpH/x9l7rNmQpG6NCMDVC2foMHHmm7NhmmG/r/omOA0/+wd6Ao9o7JrQqY8cFF+bA2xIr7Gp6QQwxH2klELCc8xVdArJQZ1+m6y3B045CLVK2nKcbQllObkJsT1TsAzrWzt94ITuypZ1wU7s7xwMJ9nmE8MjdlskxNg3OGB0nDk= ubuntu@ip-172-31-44-12"  
  type        = string
}

variable "service_name" {
  description = "A Docker image-compatible name for the service"
  type        = string
  default     = "buchi-cluster"
}

variable "container_port" {
  description = "Port of the container"
  type        = number
  default     = 5001
}
