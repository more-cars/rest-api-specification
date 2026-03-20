@REQ_MCA-3891
Feature: Delete MODEL CAR-made-by-model-car-brand Relationship
  As an API contributor
  I want to be able to disconnect MODEL CAR BRANDS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3894
  Rule: Requests to delete the ›made-by-model-car-brand‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3897 @implemented
    Scenario: Trying to delete a ›made-by-model-car-brand‹ relationship where both IDs are invalid
      Given "MODEL CAR" "F40 Matchbox" does NOT exist
      And "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      When the user deletes the "made by model car brand" relationship between "F40 Matchbox" and "Hot Wheels"
      Then the request should be rejected with status code 404
