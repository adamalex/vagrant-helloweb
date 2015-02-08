variable "atlas_token" {}
variable "do_token" {}

provider "atlas" {
    token = "${var.atlas_token}"
}

provider "digitalocean" {
    token = "${var.do_token}"
}

resource "atlas_artifact" "helloweb" {
    name = "adamalex/helloweb"
    type = "digitalocean"
}

resource "digitalocean_droplet" "web" {
    image = "${atlas_artifact.helloweb.id}"
    name = "helloweb"
    region = "nyc3"
    size = "512mb"
}
