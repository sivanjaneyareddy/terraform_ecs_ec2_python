########################################################################################################################
## Create log group for our service
########################################################################################################################

resource "aws_cloudwatch_log_group" "log_group" {
  name              = "/${lower(var.namespace)}/ecs/${var.service_name}/${var.environment}"
  retention_in_days = 7

  tags = {
    Scenario = var.scenario
  }
}

