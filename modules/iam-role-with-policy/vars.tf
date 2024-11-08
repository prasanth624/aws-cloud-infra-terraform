variable "rolename"{
  description ="Role name"
}

variable "description"{
  description ="Role Description"
}

variable "policy_name"{
  description = "Policy name"
}

variable "policy_description"{
  description ="Policy Description"
}

variable "trust_policy"{
  default     = ""
}

variable "path"{
  description = "Path"
  default     = "/"
}

variable "policy"{
  description = "Policy template file"
  default = ""
}

variable "instance_profile"{
  description = "Instance Profile"
}
