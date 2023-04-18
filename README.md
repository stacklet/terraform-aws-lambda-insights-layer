# terraform-aws-lambda-insights-layer

Get the lambda layer and policy arns for lambda insights for any available region.

## Usage:

```hcl
# Get the layer version for your current region

data "aws_region" "current" {}

module "lambda_insights" {
  source = "github.com/stacklet/terraform-aws-lambda-insights-layer?ref=1.0.0"
  region = data.aws_region.current.id
  # options: x86-64, arm64
  architecture = "x86-64"
}

resource "aws_lambda_layer_version" "example_layer" {
  filename = "my_layer.zip"
  source_code_hash = filebase64sha256("my_layer.zip")
  layer_name = "my_layer"
  compatible_runtimes = ["python3.9"]
}

resource "aws_lambda_function" "my_function" {
  # fill in the rest of your function configuration
  layers = [
    module.lambda_insights.layer_arn,
    aws_lambda_layer_version.example_layer.arn
  ]
}

resource "aws_iam_role" "my_role" {
  name = "my_role"
}

resource "aws_iam_role_policy_attachment" "my_role_lambda_insights" {
  role = aws_iam_role.my_role.name
  policy_arn = module.lambda_insights.policy_arn
}
```
