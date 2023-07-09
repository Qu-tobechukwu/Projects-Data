variable "project_id" {
  type        = string
  description = "My-First-Project"
}

variable "region" {
  type        = string
  description = "us-west4"
}

variable "zone1" {
  type        = string
  description = "us-west4-a"
}

variable "zone2" {
  type        = string
  description = "us-west4-b"
}

variable "app_name" {
  type        = string
  description = "prefix for app."
  default     = "mwa"
}

variable "labels" {
  type        = map(string)
  description = "map of labels."
  default     = { "mwa" = true }
}


variable "run_roles" {
  description = "roles used by cloud run service"
  type        = list(string)
  default = [
    "roles/cloudsql.instanceUser",
    "roles/cloudsql.client",
  ]
}
