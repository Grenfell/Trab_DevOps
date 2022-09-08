variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "instances_count" {
  type    = number
  default = 2
}

variable "volume_type" {
  type    = string
  default = "io1"
}
