@REQ_MCA-2269
Feature: Get LAP TIME-achieved-with-car-model-variant Relationship

  @RULE_MCA-2270
  Rule: The ›achieved-with-car-model-variant‹ relationship is returned when the provided data is valid

    @TEST_MCA-2271 @implemented
    Scenario: Requesting the ›achieved-with-car-model-variant‹ relationship when one exists
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "achieved with car model variant" relationship "R" for "fastest lap"
      When the user requests the "achieved with car model variant" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
