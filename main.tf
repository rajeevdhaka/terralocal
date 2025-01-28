provider "null" {}

resource "null_resource" "minikube_start" {
  provisioner "local-exec" {
    command = <<EOT
      minikube start --profile=minikube-cluster-1 \
        --driver=${var.minikube_driver} \
        --memory=${var.minikube_memory} \
        --cpus=${var.minikube_cpus} \
        --kubernetes-version=${var.minikube_version}
    EOT
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}

