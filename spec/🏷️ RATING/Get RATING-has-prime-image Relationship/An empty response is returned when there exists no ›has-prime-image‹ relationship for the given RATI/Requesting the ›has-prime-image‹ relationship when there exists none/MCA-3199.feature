@REQ_MCA-3195
Feature: Get RATING-has-prime-image Relationship

  @RULE_MCA-3198
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given RATING

    @TEST_MCA-3199 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "RATING" "93 Percent"
      And there exists NO "has prime image" relationship for "93 Percent"
      When the user requests the "has prime image" relationship for "93 Percent"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
