variable "cf_domain" {
  type        = string
  description = "The CF domain name to use"
}

variable "cf_space_id" {
  type        = string
  description = "The CF Space to deploy in"
}

variable "name_postfix" {
  type        = string
  description = "The postfix string to append to the hostname, prevents namespace clashes"
}

variable "memory" {
  type        = number
  description = "The amount of RAM to allocate for Caddy (MB)"
  default     = 1024
}

variable "disk" {
  type        = number
  description = "The amount of Disk space to allocate for Grafana Loki (MB)"
  default     = 4096
}

variable "docker_username" {
  type        = string
  description = "Docker registry username"
  default     = ""
}

variable "docker_password" {
  type        = string
  description = "Docker registry password"
  default     = ""
}

variable "dex_image" {
  type        = string
  description = "Caddy server image to use"
  default     = "ghcr.io/philips-forks/dex:v2.37.0-hsdp.3-alpine-cf"
}

variable "issuer" {
  type        = string
  description = "Issuer"
  default     = ""
}
