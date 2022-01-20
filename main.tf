resource "aws_secretsmanager_secret" "secretmg" {
  for_each   = var.secret_name
  name       = each.key
  kms_key_id = each.value.kms_key_id

  description             = "test security group"
  tags                    = each.value.tags
  policy                  = file(each.value.policy)
  recovery_window_in_days = each.value.recovery_period
  replica {
    kms_key_id = each.value.kms_key_id
    region     = each.value.replicate_region

  }

}
