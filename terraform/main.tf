provider "kind" {}

resource "kind_cluster" "weather_lab" {
  name            = "weather-lab"
  wait_for_ready  = true
  kubeconfig_path = abspath("${path.module}/kubeconfig")
}