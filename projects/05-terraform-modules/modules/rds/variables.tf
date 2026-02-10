variable "project_name" { type = string }
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
variable "database_name" { default = "appdb" }
variable "master_username" { type = string; sensitive = true }
variable "master_password" { type = string; sensitive = true }
variable "engine_version" { default = "15.4" }
variable "instance_class" { default = "db.r6g.large" }
variable "instance_count" { default = 2 }
variable "backup_retention" { default = 7 }
variable "kms_key_arn" { type = string; default = null }
variable "skip_final_snapshot" { default = true }
