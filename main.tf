# x86-64
# https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Lambda-Insights-extension-versionsx86-64.html
#
# ARM64:
# https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Lambda-Insights-extension-versionsARM.html

locals {
  lambda_insight_layers = {
    "x86-64": {
      "us-east-1": "arn:aws:lambda:us-east-1:580247275435:layer:LambdaInsightsExtension:35",
      "us-east-2": "arn:aws:lambda:us-east-2:580247275435:layer:LambdaInsightsExtension:33",
      "us-west-1": "arn:aws:lambda:us-west-1:580247275435:layer:LambdaInsightsExtension:33",
      "us-west-2": "arn:aws:lambda:us-west-2:580247275435:layer:LambdaInsightsExtension:33",
      "af-south-1": "arn:aws:lambda:af-south-1:012438385374:layer:LambdaInsightsExtension:25",
      "ap-east-1": "arn:aws:lambda:ap-east-1:519774774795:layer:LambdaInsightsExtension:25",
      "ap-south-2": "arn:aws:lambda:ap-south-2:891564319516:layer:LambdaInsightsExtension:8",
      "ap-southeast-3": "arn:aws:lambda:ap-southeast-3:439286490199:layer:LambdaInsightsExtension:11",
      "ap-south-1": "arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension:31",
      "ap-northeast-3": "arn:aws:lambda:ap-northeast-3:194566237122:layer:LambdaInsightsExtension:2",
      "ap-northeast-2": "arn:aws:lambda:ap-northeast-2:580247275435:layer:LambdaInsightsExtension:32",
      "ap-southeast-1": "arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension:33",
      "ap-southeast-2": "arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension:33",
      "ap-northeast-1": "arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension:50",
      "ca-central-1": "arn:aws:lambda:ca-central-1:580247275435:layer:LambdaInsightsExtension:32",
      "cn-north-1": "arn:aws-cn:lambda:cn-north-1:488211338238:layer:LambdaInsightsExtension:26"
    },
    "arm64": {
      "us-east-1": "arn:aws:lambda:us-east-1:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "us-east-2": "arn:aws:lambda:us-east-2:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "us-west-2": "arn:aws:lambda:us-west-2:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "ap-south-1": "arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "ap-southeast-1": "arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "ap-southeast-2": "arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "ap-northeast-1": "arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "eu-central-1": "arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "eu-west-1": "arn:aws:lambda:eu-west-1:580247275435:layer:LambdaInsightsExtension-Arm64:2",
      "eu-west-2": "arn:aws:lambda:eu-west-2:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    }
  }
}

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

output "layer" {
  value = lookup(lookup(local.lambda_insight_layers, var.architecture, {}), var.region, null)
}
