# modules/ssm/main.t

resource "aws_ssm_parameter" "my_parameter" {
  name  = "MyParameter"
  type  = "String"
  value = "ParameterValue"
}