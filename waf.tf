resource "aws_wafv2_web_acl" "example" {
  name        = "jaz-waf-webacl-example"
  scope       = "CLOUDFRONT"
  provider = aws.us-east-1

  default_action {
    allow {}
  }

  rule {
    name     = "AWS-AWSManagedRulesCommonRuleSet"
    priority = 1
    override_action {
      none {}
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "jaz-commonrule-metric-name"
      sampled_requests_enabled   = true
    }
  }  

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "jaz-waf-webacl-metric"
    sampled_requests_enabled   = true
  }
}