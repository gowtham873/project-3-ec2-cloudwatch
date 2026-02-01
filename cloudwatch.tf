resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {

  alarm_name          = "High-CPU-Alarm"

  comparison_operator = "GreaterThanThreshold"

  evaluation_periods  = 2

  metric_name         = "CPUUtilization"

  namespace           = "AWS/EC2"

  period              = 60

  statistic           = "Average"

  threshold           = 70

  alarm_description   = "Alarm when CPU exceeds 70%"

  actions_enabled     = false   # No SNS needed for this project



  dimensions = {

    InstanceId = aws_instance.monitor_ec2.id

  }

}


