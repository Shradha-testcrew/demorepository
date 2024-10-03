# Tagging for resources
locals {
  owner    = "your_owner_name"
  testcase = "test_case_01"
  tags     = {
    Owner    = local.owner
    TestCase = local.testcase
  }
}
