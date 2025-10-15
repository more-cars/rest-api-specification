@REQ_MCA-889
Feature: Get CAR MODEL-is-successor-of Relationship

  @RULE_MCA-892
  Rule: An empty response is returned when there exists no ›is-successor-of‹ relationship for the given CAR MODEL

    @TEST_MCA-893 @implemented
    Scenario: Requesting the ›is-successor-of‹ relationship when there exists none
      Given there exists a "CAR MODEL" "Aventador"
      And there exists NO "is successor of" relationship for "Aventador"
      When the user requests the "is successor of" relationship for "Aventador"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
