variable "associate_public_ip_address" {
  description = "Associate a public ip address with the network interface. Boolean value."
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

variable "default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity"
}

variable "desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the group"
}

variable "device_name" {
  description = "The name of the device to mount"
  default     = "/dev/sda1"
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  default     = true
}

variable "extra_instance_tags" {
  type        = "map"
  description = "Extra tags for instances to be launched in ASG"
  default     = {}
}

variable "extra_volume_tags" {
  type        = "map"
  description = "Extra tags for volumes to be launched in ASGG"
  default     = {}
}

variable "notification_enabled" {
  description = "If enabled SNS notification will be sent out"
  default     = false
}

variable "enabled_metrics" {
  type = "list"

  default = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupPendingInstances",
    "GroupStandbyInstances",
    "GroupTerminatingInstances",
    "GroupTotalInstances",
  ]
}

variable "environment" {
  description = "Environment"
}

variable "fab_tag" {
  description = "Fab Tag"
}

variable "force_delete" {
  description = "Allows deleting the autoscaling group without waiting for all instances in the pool to terminate. You can force an autoscaling group to delete even if it's in the process of scaling a resource. Normally, Terraform drains all the instances before deleting the group. This bypasses that behavior and potentially leaves resources dangling."
  default     = false
}

variable "health_check_grace_period" {
  description = "Time (in seconds) after instance comes into service before checking health. Default: 300"
  default     = 30
}

variable "health_check_type" {
  description = "EC2 or ELB. Controls how health checking is done."
}

variable "iam_instance_profile" {
  description = "The IAM Instance Profile to launch the instance with"
  type        = "list"
  default     = []
}

variable "image_id" {
  description = "AMI ID to use"
}

variable "instance_subnet_ids" {
  description = "Subnet IDs where instances will be launched"
  type        = "list"
}

variable "instance_security_group_ids" {
  description = "Security Group IDs which will be attached to launched instances"
  type        = "list"
}

variable "key_name" {
  description = "Key Pair to use when launching instances"
}

variable "launch_template_version" {
  description = "Template version. Can be version number, $Latest, or $Default."
  default     = "$Latest"
}

variable "max_size" {
  description = "The maximum size of the auto scale group"
}

variable "metrics_granularity" {
  description = "The granularity to associate with the metrics to collect. The only valid value is 1Minute"
  default     = "1Minute"
}

variable "min_size" {
  description = "The minimum size of the auto scale group"
}

variable "monitoring_enabled" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  default     = false
}

variable "on_demand_allocation_strategy" {
  description = "Strategy to use when launching on-demand instances. Valid values: prioritized. Default: prioritized"
  default     = "prioritized"
}

variable "on_demand_base_capacity" {
  description = "Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances. Default: 0"
  default     = 0
}

variable "on_demand_percentage_above_base_capacity" {
  description = "Percentage split between on-demand and Spot instances above the base on-demand capacity. Default: 100"
  default     = 100
}

variable "primary_instance_type" {
  description = "Primary instance Type"
}

variable "secondary_instance_type" {
  description = "Secondary instance Type"
}

variable "service_name" {
  description = "Service name"
}

variable "spot_allocation_strategy" {
  description = "How to allocate capacity across the Spot pools. Valid values: lowest-price. Default: lowest-price"
  default     = "lowest-price"
}

variable "spot_instance_pools" {
  description = "Number of Spot pools per availability zone to allocate capacity. EC2 Auto Scaling selects the cheapest Spot pools and evenly allocates Spot capacity across the number of Spot pools that you specify. Default: 1"
  default     = 1
}

variable "target_group_arns" {
  description = "A list of aws_alb_target_group ARNs, for use with Application Load Balancing."
  type        = "list"
  default     = []
}

variable "termination_policies" {
  type        = "list"
  description = "A list of policies to decide how the instances in the auto scale group should be terminated. The allowed values are OldestInstance, NewestInstance, OldestLaunchConfiguration, ClosestToNextInstanceHour, OldestLaunchTemplate, AllocationStrategy, Default"
  default     = ["OldestInstance"]
}

variable "tertiary_instance_type" {
  description = "Tertiary instance type"
}

variable "volume_size" {
  description = "The size of the volume in gigabytes"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "wait_for_capacity_timeout" {
  description = "A maximum duration that Terraform should wait for ASG instances to be healthy before timing out. Setting this to 0 causes Terraform to skip all Capacity Waiting behavior. Default: 10m"
  default     = "10m"
}