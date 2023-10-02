variable "pm_api_token_id" {
  default   = "zadmin@pam!new_token"
  sensitive = true
}

variable "pm_api_url" {
  default = "https://10.0.2.3:8006/api2/json"
}
variable "pm_api_token_secret" {
  default   = ""
  sensitive = true
}
