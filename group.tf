resource "okta_group" "OAuth" {
  name = "OAuth Group"
  description = "Group that is created using OAuth-App"
}


resource "okta_group_rule" "OAuth-Group" {
      expression_type   = "urn:okta:expression:1.0"
      expression_value  = "((isMemberOfAnyGroup(\"00g4t2q25mqI3GjQ3697\",\"00g4t2s0abaYTunDr697\",\"00g4t2t0aujdUtUp9697\",\"00g4t2sndgZWuv0TT697\",\"00g4t2tfpiE1LgCFt697\",\"00g4t2upcpfpT4TBs697\",\"00g4t2s0r4iMu6qkq697\",\"00g4t2q7zspblBis3697\",\"00g4t2s82oIkrDSUZ697\",\"00g4t2s2m0OdPqxcq697\",\"00g89ursiiL4O31Jf697\",\"00ga476lxtXKPXWLA697\",\"00g4t2p7q6pq96ZgI697\",\"00g4t2uwiduR7rdkj697\",\"00gb3nti2lG4onF85697\",\"00g4t2uovrD6BLMGZ697\") AND (user.employmentStatus == \"Full-time Employee\" OR user.employmentStatus == \"Director\")) OR (isMemberOfAnyGroup(\"00g4t2q25mqI3GjQ3697\") AND (user.employmentStatus == \"Part-time Employee\" OR user.employmentStatus == \"Contractor\")) OR (isMemberOfAnyGroup(\"00g4t2s0abaYTunDr697\") AND (user.employmentStatus == \"Part-time Employee\")) OR (isMemberOfAnyGroup(\"00g4t2t0aujdUtUp9697\") AND (user.employmentStatus == \"Fixed Term Full Time Employee\" OR user.employmentStatus == \"Part-time Employee\")) OR (isMemberOfAnyGroup(\"00g4t2sndgZWuv0TT697\") AND (user.employmentStatus == \"Part-time Employee\" OR user.employmentStatus == \"Contractor\" OR user.employmentStatus == \"Subcontractor\")) OR (isMemberOfAnyGroup(\"00g4t2s0r4iMu6qkq697\") AND (user.employmentStatus == \"Fixed Term Full Time Employee\")) OR (isMemberOfAnyGroup(\"00g4t2s2m0OdPqxcq697\") AND (user.employmentStatus == \"Subcontractor\")) OR (isMemberOfAnyGroup(\"00ga476lxtXKPXWLA697\") AND (user.employmentStatus == \"Part-time Employee\")) OR (user.login==\"yonghui.feng@smartnews.com\")) AND ((user.workLocation != \"CN\"))"
      group_assignments = [
          okta_group.OAuth.id
      ]
      name              = okta_group.OAuth.name
      status            = "ACTIVE"
}