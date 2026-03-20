@REQ_MCA-3873
Feature: Create MODEL CAR-made-by-model-car-brand Relationship

  @RULE_MCA-3880
  Rule: The same ›made-by-model-car-brand‹ relationship between the same nodes can only be created once

    @TEST_MCA-3881 @implemented
    Scenario: Trying to create the same ›made-by-model-car-brand‹ relationship again
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "MODEL CAR BRAND" "Matchbox"
      And there exists a "made by model car brand" relationship between "F40 Scale Model" and "Matchbox"
      When the user creates a "made by model car brand" relationship between "F40 Scale Model" and "Matchbox"
      Then the response should return with status code 304
