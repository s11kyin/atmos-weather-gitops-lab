output "cluster_name" {
  value = kind_cluster.weather_lab.name
}

output "api_endpoint" {
  value = kind_cluster.weather_lab.endpoint
}