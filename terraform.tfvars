secret_name = {
  terraformsecret1 = {
    kms_key_id              = ""
    description             = ""
    policy                  = "policy.json"
    recovery_period         = 0
    replicate_region        = "us-west-2"
    tags = {
      name       = "terraform secret"
      created_by = "Dhanashree"
      Managed_by = "Terrraform"
    }
  },
  terraformsecret2 = {
    kms_key_id              = ""
    description             = ""
    policy                  = "policy.json"
    recovery_period          = 0
    replicate_region        = "us-west-2"
    tags = {
      name       = "terraform secret"
      created_by = "Dhanashree"
      Managed_by = "Terrraform"
    }
  }
}
