@REQ_MCA-3141
Feature: Get RATING-for-car-model-variant Relationship

  @RULE_MCA-3142
  Rule: The ›for-car-model-variant‹ relationship is returned when the provided data is valid

    @TEST_MCA-3143 @implemented
    Scenario: Requesting the ›for-car-model-variant‹ relationship when one exists
      Given there exists a "RATING" "93 Percent"
      And there exists a "for car model variant" relationship "R" for "93 Percent"
      When the user requests the "for car model variant" relationship for "93 Percent"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
