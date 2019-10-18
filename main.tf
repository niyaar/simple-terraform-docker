resource "docker_image" "nginx" {
  name = "nginx"
}

resource "docker_container" "nginx" {
  name = "nginx-container-example"
  image = "${docker_image.nginx.latest}"
}

