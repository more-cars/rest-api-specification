@REQ_MCA-3141
Feature: Get RATING-for-car-model-variant Relationship

  @RULE_MCA-3144
  Rule: An empty response is returned when there exists no ›for-car-model-variant‹ relationship for the given RATING

    @TEST_MCA-3145 @implemented
    Scenario: Requesting the ›for-car-model-variant‹ relationship when there exists none
      Given there exists a "RATING" "93 Percent"
      And there exists NO "for car model variant" relationship for "93 Percent"
      When the user requests the "for car model variant" relationship for "93 Percent"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
