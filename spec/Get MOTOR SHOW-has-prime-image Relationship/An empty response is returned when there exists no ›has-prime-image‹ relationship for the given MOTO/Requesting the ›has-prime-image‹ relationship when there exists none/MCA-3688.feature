@REQ_MCA-3684
Feature: Get MOTOR SHOW-has-prime-image Relationship

  @RULE_MCA-3687
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given MOTOR SHOW

    @TEST_MCA-3688
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists NO "has prime image" relationship for "IAA Frankfurt"
      When the user requests the "has prime image" relationship for "IAA Frankfurt"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
