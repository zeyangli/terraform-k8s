provider "kubernetes" {
  # Configuration options
  config_path    = "../config/clustera.config"
  config_context = "kind-test-cluster"
  alias          = "clustera"
  insecure       = true
}

resource "kubernetes_namespace" "jenkins" {
  provider = kubernetes.clustera
  metadata {
    name = "devops"
  }
}
# provider "kubernetes" {
#   # Configuration options
#   config_path    = "../config/clusterb.config"
#   config_context = "kind-test-cluster"
#   alias          = "clusterb"
# }