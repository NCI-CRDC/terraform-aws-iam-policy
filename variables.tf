variable "app" {
  type        = string
  description = "the name of the application expressed as an acronym"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "the target tier ('dev', 'qa', 'stage', or 'prod'.)"
  sensitive   = false

  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "nonprod"], var.env)
    error_message = "valid values are 'dev', 'qa', 'stage', 'prod', and 'nonprod'"
  }
}

variable "program" {
  type        = string
  description = "the program associated with the application"
  sensitive   = false

  validation {
    condition     = contains(["crdc", "ccdi", "ctos"], var.program)
    error_message = "valid values for program are 'crdc', 'ccdi', and 'ctos'"
  }
}

variable "description" {
  type        = string
  description = "description of the policy"
}

variable "path" {
  type        = string
  description = "the policy path"
  default     = null
}

variable "policy" {
  type        = string
  description = "the policy document to attach to this policy resource"
}

variable "resource_name_suffix" {
  type        = string
  description = "the resource name suffix that follows the stack name"
}
