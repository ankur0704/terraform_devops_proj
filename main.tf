terraform{
required_providers{
docker={
source="kreuzwerker/docker"
version = "~> 2.25.0"
}
}
}

provider "docker" {}
resource "docker_container" "nginx"{
name = "nginx_web"
image= "nginx:latest"
ports{
internal =87
external =8087
}
}

resource "docker_container" "nodejs"{
name="nodejs_app_b45"
image = "node:latest"
ports {
internal= 3005
external = 3005
}
}



