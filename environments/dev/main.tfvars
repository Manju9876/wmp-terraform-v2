# component_name = {
#   frontend = {
#     ami_id        = "ami-0220d79f3f480ecf5"
#     instance_type = "t3.small"
#     ports = {
#       http = 80
#       https = 8080
#     }
#   }
#   postgresql = {
#     ami_id        = "ami-0220d79f3f480ecf5"
#     instance_type = "t3.small"
#   }
#   auth-service = {
#     ami_id        = "ami-0220d79f3f480ecf5"
#     instance_type = "t3.small"
#   }
#   portfolio-service = {
#     ami_id        = "ami-0220d79f3f480ecf5"
#     instance_type = "t3.small"
#   }
#   analytics-service = {
#     ami_id        = "ami-0220d79f3f480ecf5"
#     instance_type = "t3.small"
#   }
# }

apps = {
  frontend = {
    instance_type = "t3.small"
    ports = {
      ssh      = 22
      frontend = 80
    }
  }
  auth-service = {
    instance_type = "t3.small"
    ports = {
      ssh      = 22
      auth-service = 8081
    }
  }
  portfolio-service = {
    instance_type = "t3.small"
    ports = {
      ssh      = 22
      portfolio-service = 8080
    }
  }
  analytics-service = {
    instance_type = "t3.small"
    ports = {
      ssh = 22
      analytics-service = 8000
    }
  }
}

database = {
  postgresql = {
    instance_type = "t3.small"
    ports = {
      ssh        = 22
      postgresql = 5432
    }
  }
}

dns_domain = "devopsbymanju.shop."
env = "dev"