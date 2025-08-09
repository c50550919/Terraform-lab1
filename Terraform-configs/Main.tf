terraform {
  required_providers {
    minikube = {
        source = "scott-the-programmer/minikube"
        version = "~> 0.4.2"
    }
  }
}

provider "minikube" {
    kubernetes_version = "v1.30.0" # It's best practice to use a specific version
}

resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "Terraform-lab"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]
}