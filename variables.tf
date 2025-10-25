variable "quantity" {
  description = "Quantity of instances to provision (eg: 1)"
  type        = number
}

variable "AMI_type" {
  description = "Choose Amazon Linux 2023 (eg: amazon-linux) or Ubuntu 24 (eg: ubuntu)"
  type        = string
}

variable "region" {
  description = "Choose AWS region for your instances"
  type        = string
  default     = "eu-west-3"
}
