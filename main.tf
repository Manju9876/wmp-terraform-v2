module "component" {
  source = "./modules/component"
  for_each = var.component_name

  ami_id         = each.value["ami_id"]
  component_name = each.key
  env            = var.env
  zone_id        = var.zone_id
  instance_type = each.value["instance_type"]
}