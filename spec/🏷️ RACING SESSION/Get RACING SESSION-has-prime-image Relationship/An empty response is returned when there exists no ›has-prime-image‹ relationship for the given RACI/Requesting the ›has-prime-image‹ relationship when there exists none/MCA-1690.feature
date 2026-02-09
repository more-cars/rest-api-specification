@REQ_MCA-1686
Feature: Get RACING SESSION-has-prime-image Relationship

  @RULE_MCA-1689
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given RACING SESSION

    @TEST_MCA-1690 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists NO "has prime image" relationship for "Grand Prix"
      When the user requests the "has prime image" relationship for "Grand Prix"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
