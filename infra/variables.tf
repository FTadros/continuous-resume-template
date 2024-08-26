variable "domain" {
  description = "The domain name to use for the Route 53 zone"
  type        = string

}

variable "subdomain" {
  description = "The subdomain name to use for the Route 53 record"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "type" {
  description = "The type of Route 53 record to create"
  type        = string
}

variable "gh_username" {
  description = "The GitHub username to use for the Route 53 record"
  type        = string
}
