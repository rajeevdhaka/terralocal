variable "minikube_driver" {
  description = "The driver to use for Minikube"
  type        = string
  default     = "docker"
}

variable "minikube_memory" {
  description = "Amount of memory allocated to Minikube"
  type        = string
  default     = "2048mb"
}

variable "minikube_cpus" {
  description = "Number of CPUs allocated to Minikube"
  type        = number
  default     = 2
}

variable "minikube_version" {
  description = "Minikube version"
  type        = string
  default     = "v1.28.3"
}


