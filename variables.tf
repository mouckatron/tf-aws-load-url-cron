
variable "appname" {
  description = "Name of your app, used as name or prefix for resources and applied as tag for cost tracking"
  type        = string
}

variable "url" {
  description = "The URL to load periodically"
  type        = string
}

variable "every_x_minutes" {
  description = "Number of minutes between load attempts"
  type        = number
}
