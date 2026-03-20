@REQ_MCA-3989
Feature: Delete MODEL CAR BRAND-created-model-car Relationship
  As an API contributor
  I want to be able to disconnect MODEL CARS from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-3990
  Rule: The ›created-model-car‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3991 @implemented
    Scenario: Deleting the ›created-model-car‹ relationship when it actually exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "created model car" relationship "R" between "Hot Wheels" and "F40 Matchbox"
      When the user deletes the "created model car" relationship between "Hot Wheels" and "F40 Matchbox"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
