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
  default     = "dev"
  type        = string
}

variable "az_count" {
  description = "Describes how many availability zones are used"
  default     = 2
  type        = number
}
