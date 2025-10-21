@REQ_MCA-1124
Feature: Get TRACK LAYOUT-has-prime-image Relationship

  @RULE_MCA-1127
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given TRACK LAYOUT

    @TEST_MCA-1128 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists NO "has prime image" relationship for "GP Circuit"
      When the user requests the "has prime image" relationship for "GP Circuit"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
