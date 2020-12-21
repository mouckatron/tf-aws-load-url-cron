
resource "aws_cloudwatch_event_rule" "load-url" {
  name        = "${var.appname}-load-url"
  description = "Periodically load ${var.appname} url"

  schedule_expression = "rate(${var.every_x_minutes} minutes)"
}

resource "aws_cloudwatch_event_target" "load-url-lambda" {
  rule      = aws_cloudwatch_event_rule.load-url.name
  arn       = aws_lambda_function.load-url.arn
  target_id = "Lambda"
}
