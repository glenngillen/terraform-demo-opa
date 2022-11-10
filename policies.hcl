policy "feedback" {
  description = "Ensure that we have a response to demo"
  query = "data.terraform.policies.feedback.deny"
  enforcement_level = "advisory"
}