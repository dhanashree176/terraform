variable "secret_name" {
  type = map(object({
    kms_key_id              = string
    description             = string
    tags                    = map(string)
    recovery_period         = number
    replicate_region        = string
    policy                  = string
  }))
}


/*variable "kms_key_id" {
  type        = string
  default     = ""
  description = "ARN or Id of the AWS KMS customer master key (CMK) to be used to encrypt the secret values"
}


variable "tags" {
  description = "Tags to set on the secret manager."
  type        = map(string)
  default     = {}
}

variable "recovery_period" {
  default     = 30
  type        = number
  description = "Number of days that AWS Secrets Manager waits before it can delete the secret. ranges between 7 -30, default would be 30"
}

variable "replicate_region" {
  type         = string
  default      = ""
  description = "provide region in which you wanted to replicate the secret manager"
}*/

