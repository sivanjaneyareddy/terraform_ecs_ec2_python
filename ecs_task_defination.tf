########################################################################################################################
## Creates ECS Task Definition
########################################################################################################################

resource "aws_ecs_task_definition" "default" {
  family             = "${var.namespace}_ECS_TaskDefinition_${var.environment}"
  execution_role_arn = aws_iam_role.ecs_task_execution_role.arn
  task_role_arn      = aws_iam_role.ecs_task_iam_role.arn

  container_definitions = jsonencode([
    {
      name         = var.service_name
      image        = "${aws_ecr_repository.ecr.repository_url}:latest"
      cpu          = 256
      memory       = 256
      essential    = true
      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = 5001
          protocol      = "tcp"
        }
      ]
      logConfiguration = {
        logDriver = "awslogs",
        options   = {
          "awslogs-group"         = aws_cloudwatch_log_group.log_group.name,
          "awslogs-region"        = "us-east-1",
          "awslogs-stream-prefix" = "app"
        }
      }
    }
  ])

  tags = {
    Scenario = var.scenario
  }
}

