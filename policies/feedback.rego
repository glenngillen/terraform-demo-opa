package terraform.policies.feedback

import input.plan as tfplan

deny[msg] {
  r := tfplan.resource_changes[_]
  r.type == "aws_lambda_function"
  msg := sprintf("%v has a mode of '%v'", [r.address, r.mode])
}