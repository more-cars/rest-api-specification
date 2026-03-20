@REQ_MCA-3891
Feature: Delete MODEL CAR-made-by-model-car-brand Relationship
  As an API contributor
  I want to be able to disconnect MODEL CAR BRANDS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3892
  Rule: The ›made-by-model-car-brand‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3893 @implemented
    Scenario: Deleting the ›made-by-model-car-brand‹ relationship when it actually exists
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "made by model car brand" relationship "R" between "F40 Matchbox" and "Hot Wheels"
      When the user deletes the "made by model car brand" relationship between "F40 Matchbox" and "Hot Wheels"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
