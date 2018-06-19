variable "route_table_id" {
  description = "Route Table ID as Assigned by AWS. Creates Route Table Association with this new Public Subnet"
  type        = "string"
}

variable "subnet_cidr" {
  description = "IP Address Space of new Public Subnet"
  default     = "10.0.1.0/24"
  type        = "string"
}

variable "vpc_id" {
  description = "VPC ID as assigned by AWS"
  type        = "string"
}

variable "public_ip" {
  default     = true
  type        = "string"
  description = "Should we assign public ips to instances launched in this subnet?"
}

variable "availability_zone" {
  description = "Availability zone where subnet will reside"
  type        = "string"
}

variable "resource_tags" {
  description = "Optional map of tags to set on resources, defaults to empty map."
  type        = "map"
  default     = {}
}

variable "network_name" {
  description = "All ec2 instances that are spun up in this subnet should be associated through having a common purpose. This is a name that specifies that purpose"
  type        = "string"
}
