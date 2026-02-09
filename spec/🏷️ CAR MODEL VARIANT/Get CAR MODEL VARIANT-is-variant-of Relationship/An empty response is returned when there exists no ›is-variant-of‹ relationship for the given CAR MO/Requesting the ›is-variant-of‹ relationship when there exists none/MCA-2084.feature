@REQ_MCA-2080
Feature: Get CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2083
  Rule: An empty response is returned when there exists no ›is-variant-of‹ relationship for the given CAR MODEL VARIANT

    @TEST_MCA-2084 @implemented
    Scenario: Requesting the ›is-variant-of‹ relationship when there exists none
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists NO "is variant of" relationship for "BMW M3"
      When the user requests the "is variant of" relationship for "BMW M3"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
