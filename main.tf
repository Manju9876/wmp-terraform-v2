module "network" {
  source = "modulesetwork"
  for_each = var.component_name

  component_name = each.key
  env = "dev"
}

module "compute" {
  source = "modulesompute"
  for_each = var.component_name

  component_name = each.key
  sg_id = module.network[each.key].sg_id
  env = ""
}

module "dns" {
  source = "modulesns"
  for_each = var.component_name

  component_name = each.key
  private_ip = module.compute[each.key].private_ip
  env            = ""
}

module "ansible" {
  source = "modulesnsible"
  for_each = var.component_name
  depends_on = [module.dns]

  component_name= each.key
  public_ip = module.compute[each.key].public_ip
  env = ""
}
