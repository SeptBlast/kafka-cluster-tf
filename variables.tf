variable "AWS_REGION" {
  description = "Provide AWS_Region"
  type        = string
  default     = "us-east-1"
}

variable "AWS_PROFILE" {
  description = "Provide AWS_Profile on local machine to consume"
  type        = string
  default     = "default"
}

variable "stackName" {
  type    = string
  default = "sandbox"
}
