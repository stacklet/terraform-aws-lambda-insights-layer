# x86-64
# https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Lambda-Insights-extension-versionsx86-64.html
#
# ARM64:
# https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Lambda-Insights-extension-versionsARM.html

locals {
  lambda_insight_layers = {
    "x86-64": {
      "us-east-1": "arn:aws:lambda:us-east-1:580247275435:layer:LambdaInsightsExtension:38",
      "us-east-2": "arn:aws:lambda:us-east-2:580247275435:layer:LambdaInsightsExtension:38",
      "us-west-1": "arn:aws:lambda:us-west-1:580247275435:layer:LambdaInsightsExtension:38",
      "us-west-2": "arn:aws:lambda:us-west-2:580247275435:layer:LambdaInsightsExtension:38",
      "af-south-1": "arn:aws:lambda:af-south-1:012438385374:layer:LambdaInsightsExtension:28",
      "ap-east-1": "arn:aws:lambda:ap-east-1:519774774795:layer:LambdaInsightsExtension:28",
      "ap-south-2": "arn:aws:lambda:ap-south-2:891564319516:layer:LambdaInsightsExtension:10",
      "ap-southeast-3": "arn:aws:lambda:ap-southeast-3:439286490199:layer:LambdaInsightsExtension:14",
      "ap-south-1": "arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension:36",
      "ap-northeast-3": "arn:aws:lambda:ap-northeast-3:194566237122:layer:LambdaInsightsExtension:19",
      "ap-northeast-2": "arn:aws:lambda:ap-northeast-2:580247275435:layer:LambdaInsightsExtension:37",
      "ap-southeast-1": "arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension:38",
      "ap-southeast-2": "arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension:38",
      "ap-northeast-1": "arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension:60",
      "ca-central-1": "arn:aws:lambda:ca-central-1:580247275435:layer:LambdaInsightsExtension:37",
      "cn-north-1": "arn:aws-cn:lambda:cn-north-1:488211338238:layer:LambdaInsightsExtension:29",
      "cn-northwest-1": "arn:aws-cn:lambda:cn-northwest-1:488211338238:layer:LambdaInsightsExtension:29",
      "eu-central-1": "arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension:38",
      "eu-west-1": "arn:aws:lambda:eu-west-1:580247275435:layer:LambdaInsightsExtension:38",
      "eu-west-2": "arn:aws:lambda:eu-west-2:580247275435:layer:LambdaInsightsExtension:38",
      "eu-south-1": "arn:aws:lambda:eu-south-1:339249233099:layer:LambdaInsightsExtension:28",
      "eu-west-3": "arn:aws:lambda:eu-west-3:580247275435:layer:LambdaInsightsExtension:37",
      "eu-south-2": "arn:aws:lambda:eu-south-2:352183217350:layer:LambdaInsightsExtension:12",
      "eu-north-1": "arn:aws:lambda:eu-north-1:580247275435:layer:LambdaInsightsExtension:35",
      "eu-central-2": "arn:aws:lambda:eu-central-2:033019950311:layer:LambdaInsightsExtension:11",
      "me-south-1": "arn:aws:lambda:me-south-1:285320876703:layer:LambdaInsightsExtension:28",
      "il-central-1": "arn:aws:lambda:il-central-1:459530977127:layer:LambdaInsightsExtension:5",
      "me-central-1": "arn:aws:lambda:me-central-1:732604637566:layer:LambdaInsightsExtension:11",
      "sa-east-1": "arn:aws:lambda:sa-east-1:580247275435:layer:LambdaInsightsExtension:37"
    },
    "arm64": {
      "us-east-1": "arn:aws:lambda:us-east-1:580247275435:layer:LambdaInsightsExtension-Arm64:5",
      "us-east-2": "arn:aws:lambda:us-east-2:580247275435:layer:LambdaInsightsExtension-Arm64:7",
      "us-west-1": "arn:aws:lambda:us-west-1:580247275435:layer:LambdaInsightsExtension-Arm64:3",
      "us-west-2": "arn:aws:lambda:us-west-2:580247275435:layer:LambdaInsightsExtension-Arm64:5",
      "af-south-1": "arn:aws:lambda:af-south-1:012438385374:layer:LambdaInsightsExtension-Arm64:2",
      "ap-east-1": "arn:aws:lambda:ap-east-1:519774774795:layer:LambdaInsightsExtension-Arm64:2",
      "ap-southeast-3": "arn:aws:lambda:ap-southeast-3:439286490199:layer:LambdaInsightsExtension-Arm64:2",
      "ap-south-1": "arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension-Arm64:7",
      "ap-northeast-3": "arn:aws:lambda:ap-northeast-3:194566237122:layer:LambdaInsightsExtension-Arm64:2",
      "ap-northeast-2": "arn:aws:lambda:ap-northeast-2:580247275435:layer:LambdaInsightsExtension-Arm64:4",
      "ap-southeast-1": "arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension-Arm64:5",
      "ap-southeast-2": "arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension-Arm64:5",
      "ap-northeast-1": "arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension-Arm64:11",
      "ca-central-1": "arn:aws:lambda:ca-central-1:580247275435:layer:LambdaInsightsExtension-Arm64:3",
      "eu-central-1": "arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension-Arm64:5",
      "eu-west-1": "arn:aws:lambda:eu-west-1:580247275435:layer:LambdaInsightsExtension-Arm64:5",
      "eu-west-2": "arn:aws:lambda:eu-west-2:580247275435:layer:LambdaInsightsExtension-Arm64:5",
      "eu-south-1": "arn:aws:lambda:eu-south-1:339249233099:layer:LambdaInsightsExtension-Arm64:2",
      "eu-west-3": "arn:aws:lambda:eu-west-3:580247275435:layer:LambdaInsightsExtension-Arm64:3",
      "eu-north-1": "arn:aws:lambda:eu-north-1:580247275435:layer:LambdaInsightsExtension-Arm64:3",
      "me-south-1": "arn:aws:lambda:me-south-1:285320876703:layer:LambdaInsightsExtension-Arm64:2",
      "sa-east-1": "arn:aws:lambda:sa-east-1:580247275435:layer:LambdaInsightsExtension-Arm64:3"
    }
  }
}

data "aws_partition" "current" {}

variable "region" {
  type = string
  description = "Lambda Region, not all regions are supported by lambda insights. See source for all supported regions and architectures"
}

variable "architecture" {
  type = string
  default = "x86-64"
  description = "Lambda Architecture, should be either x86-64 or arm64, default: x86-64"
  validation {
    condition = contains(["x86-64", "arm64"], var.architecture)
    error_message = "Architecture should be one of: [x86-64, arm64], got: ${var.architecture}"
  }
}

output "layer_arn" {
  value = lookup(lookup(local.lambda_insight_layers, var.architecture, {}), var.region, null)
}

output "policy_arn" {
  value = "arn:${data.aws_partition.current.partition}:iam::aws:policy/CloudWatchLambdaInsightsExecutionRolePolicy"
}
