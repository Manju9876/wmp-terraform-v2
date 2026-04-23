module "component" {
  source = "./modules/component"
  for_each = var.component_name

  ami_id         = each.key["ami_id"]
  component_name = each.key
  env            = var.env
  zone_id        = var.zone_id
  instance_type = each.key["instance_type"]
}