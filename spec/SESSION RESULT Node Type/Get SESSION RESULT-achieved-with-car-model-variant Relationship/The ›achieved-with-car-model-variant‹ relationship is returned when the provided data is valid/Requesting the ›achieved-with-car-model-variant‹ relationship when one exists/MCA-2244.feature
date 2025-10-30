@REQ_MCA-2242
Feature: Get SESSION RESULT-achieved-with-car-model-variant Relationship

  @RULE_MCA-2243
  Rule: The ›achieved-with-car-model-variant‹ relationship is returned when the provided data is valid

    @TEST_MCA-2244 @implemented
    Scenario: Requesting the ›achieved-with-car-model-variant‹ relationship when one exists
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "achieved with car model variant" relationship "R" for "1st place"
      When the user requests the "achieved with car model variant" relationship for "1st place"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
