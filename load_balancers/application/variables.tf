variable "aws_lb_accounts" {
  description = "Use the account ID that corresponds to the region for your load balancer and bucket"
  type        = map(string)

  default = {
    us-east-1      = "127311923021"
    us-east-2      = "033677994240"
    us-west-1      = "027434742980"
    us-west-2      = "797873946194"
    ca-central-1   = "985666609251"
    eu-central-1   = "054676820928"
    eu-west-1      = "156460612806"
    eu-west-2      = "652711504416"
    eu-west-3      = "009996457667"
    eu-north-1     = "897822967062"
    ap-east-1      = "754344448648"
    ap-northeast-1 = "582318560864"
    ap-northeast-2 = "600734575887"
    ap-northeast-3 = "383597477331"
    ap-southeast-1 = "114774131450"
    ap-southeast-2 = "783225319266"
    ap-south-1     = "718504428378"
    sa-east-1      = "507241528517"
  }
}

variable "business_name" {
  description = "Business Name"
}

variable "created_by" {
  description = "Created By"
}

variable "cluster" {
  description = "Cluster Name"
  default     = "default"
}

variable "environment" {
  description = "Environment"
}

variable "lb_access_logs_enabled" {
  description = "Boolean to enable / disable access_logs. Defaults to false, even when bucket is specified"
  default     = false
}

variable "lb_certificate_arn" {
  description = "The ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates"
  default     = ""
}

variable "lb_create_security_group" {
  description = "Create a security group for load balancer"
  default     = true
}

variable "lb_create_timeout" {
  description = "Used for Creating LB (Default 10 minutes)"
  default     = "10m"
}

variable "lb_delete_timeout" {
  description = "Used for destroying LB (Default 10 minutes)"
  default     = "10m"
}

variable "lb_enable_cross_zone_load_balancing" {
  description = "If true, cross-zone load balancing of the load balancer will be enabled. This is a network load balancer feature. Defaults to false"
  default     = false
}

variable "lb_enable_deletion_protection" {
  description = "If true, deletion of the load balancer will be disabled via the AWS API. This will prevent Terraform from deleting the load balancer. Defaults to false"
  default     = false
}

variable "lb_enable_https_listener" {
  description = "If enabled one HTTPS listener will be created"
  default     = false
}

variable "lb_enable_http_listener" {
  description = "If enabled one HTTP listener will be created"
  default     = false
}

variable "lb_enable_http2" {
  description = "Indicates whether HTTP/2 is enabled. Defaults to true"
  default     = true
}

variable "lb_health_check_healthy_thresold" {
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy. Defaults to 3"
  default     = 3
}

variable "lb_health_check_interval" {
  description = "The approximate amount of time, in seconds, between health checks of an individual target. Minimum value 5 seconds, Maximum value 300 seconds. Default 30 seconds"
  default     = 30
}

variable "lb_health_check_matcher_status_code" {
  description = "The HTTP codes to use when checking for a successful response from a target. You can specify multiple values (for example, '200,202') or a range of values (for example, '200-299')"
  default     = 200
}

variable "lb_health_check_path" {
  description = "The destination for the health check request"
  default     = "/"
}

variable "lb_health_check_port" {
  description = "The port to use to connect with the target. Valid values are either ports 1-65536, or traffic-port. Defaults to traffic-port"
  default     = "traffic-port"
}

variable "lb_health_check_protocol" {
  description = "The protocol to use to connect with the target. Defaults to HTTP"
  default     = "HTTP"
}

variable "lb_health_check_timeout" {
  description = "The amount of time, in seconds, during which no response means a failed health check. For Application Load Balancers, the range is 2 to 60 seconds and the default is 5 seconds"
  default     = 5
}

variable "lb_health_check_unhealthy_thresold" {
  description = "The number of consecutive health check failures required before considering the target unhealthy"
  default     = 3
}

variable "lb_https_listener_ssl_policy" {
  description = "The name of the SSL Policy for the listener"
  default     = ""
}

variable "lb_idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle"
  default     = 60
}

variable "lb_ip_address_type" {
  description = "The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack"
  default     = "ipv4"
}

variable "lb_is_internal" {
  description = "If true, the LB will be internal"
}

variable "lb_logs_retention_days" {
  description = "Specifies the number of days after object creation when the specific rule action takes effect"
  default     = 7
}

variable "lb_subnets" {
  description = "Subnet IDS where AWS will launch load balancer"
  type        = list(string)
}

variable "lb_security_groups" {
  description = "Security group IDs which will be associated with load balancer"
  type        = list(string)
  default     = []
}

variable "lb_update_timeout" {
  description = "Used for LB modifications (Default 10 minutes)"
  default     = "10m"
}

variable "service_name" {
  description = "Service Name"
}

variable "vpc_id" {
  description = "VPC ID"
}

