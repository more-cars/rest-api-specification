@REQ_MCA-861
Feature: Get CAR MODEL-has-successor Relationship

  @RULE_MCA-864
  Rule: An empty response is returned when there exists no ›has-successor‹ relationship for the given CAR MODEL

    @TEST_MCA-865 @implemented
    Scenario: Requesting the ›has-successor‹ relationship when there exists none
      Given there exists a "CAR MODEL" "Diablo"
      And there exists NO "has successor" relationship for "Diablo"
      When the user requests the "has successor" relationship for "Diablo"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
