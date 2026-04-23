module "component" {
  source = "./modules/component"
  for_each = var.component_name

  ami_id         = ""
  component_name = ""
  env            = ""
  sg_id          = ""
  zone_id        = ""
}