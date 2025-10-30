@REQ_MCA-2188
Feature: Get CAR MODEL VARIANT-has-prime-image Relationship

  @RULE_MCA-2191
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given CAR MODEL VARIANT

    @TEST_MCA-2192 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists NO "has prime image" relationship for "BMW M3"
      When the user requests the "has prime image" relationship for "BMW M3"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
