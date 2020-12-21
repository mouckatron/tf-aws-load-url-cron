
resource "aws_lambda_function" "load-url" {

  function_name = "${var.appname}-load-url"

  filename         = "lambda.zip"
  handler          = "main.lambda_handler"
  runtime          = "python3.6"
  source_code_hash = filebase64sha256("${path.module}/lambda.zip")

  role = aws_iam_role.lambda.arn

  environment {
    variables = {
      URL = var.url
    }
  }
  tags = {
    appname = var.appname
  }
}
