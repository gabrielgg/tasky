resource "aws_eks_cluster" "gg-wiz-tasky-2" {
  access_config {
    authentication_mode                         = "API"
    bootstrap_cluster_creator_admin_permissions = "true"
  }

  bootstrap_self_managed_addons = "false"

  compute_config {
    enabled       = "true"
    node_pools    = ["general-purpose", "system"]
    node_role_arn = var.node_role_arn
  }

  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  kubernetes_network_config {
    elastic_load_balancing {
      enabled = "true"
    }

    ip_family         = "ipv4"
    service_ipv4_cidr = "172.20.0.0/16"
  }

  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  storage_config {
    block_storage {
      enabled = "true"
    }
  }

  upgrade_policy {
    support_type = "STANDARD"
  }

  version = "1.30"

  vpc_config {
    endpoint_private_access = "true"
    endpoint_public_access  = "true"
    public_access_cidrs     = ["0.0.0.0/0"]
    subnet_ids              = var.subnet_ids
  }

  zonal_shift_config {
    enabled = "true"
  }
}
