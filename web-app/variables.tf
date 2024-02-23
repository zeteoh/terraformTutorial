# should specify optional vs required
variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "us-east-1"
}

# ec2 variables
variable "instance_name" {
  description = "Name of ec2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-0c7217cdde317cfec"
}

# s3 variables
variable "bucket_name" {
  description = "name of s3 bucket for app data"
  type        = string
}

# route53 variables
variable "domain" {
  description = "Domain for website"
  type        = string
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

# rds variables
variable "db_name" {
  description = "Name of DB"
  type        = string
}

variable "db_user" {
  description = "username for database"
  type        = string
  default     = "foo"
}

variable "db_pass" {
  description = "password for database"
  type        = string
  sensitive   = true
}
