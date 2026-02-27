@REQ_MCA-2697
Feature: Get MAGAZINE-has-prime-image Relationship

  @RULE_MCA-2700
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given MAGAZINE

    @TEST_MCA-2701 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists NO "has prime image" relationship for "Top Gear"
      When the user requests the "has prime image" relationship for "Top Gear"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
