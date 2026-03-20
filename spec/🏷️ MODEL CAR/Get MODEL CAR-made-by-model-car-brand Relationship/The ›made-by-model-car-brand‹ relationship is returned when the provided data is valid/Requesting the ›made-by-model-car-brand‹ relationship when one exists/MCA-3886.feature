@REQ_MCA-3884
Feature: Get MODEL CAR-made-by-model-car-brand Relationship

  @RULE_MCA-3885
  Rule: The ›made-by-model-car-brand‹ relationship is returned when the provided data is valid

    @TEST_MCA-3886 @implemented
    Scenario: Requesting the ›made-by-model-car-brand‹ relationship when one exists
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "made by model car brand" relationship "R" for "F40 Scale Model"
      When the user requests the "made by model car brand" relationship for "F40 Scale Model"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
