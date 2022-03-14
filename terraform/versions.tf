terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.43.1"
    }
    local = {
      source = "hashicorp/local"
    }
    null = {
      source = "hashicorp/null"
    }
  }
  required_version = ">= 1.0.0"
  // experiments      = [module_variable_optional_attrs]
}

# # Configure the OpenStack Provider to use the (newer) Octavia loadbalancer
provider "openstack" {
  #   token       = "leafcloud-production"
  use_octavia = true
}

