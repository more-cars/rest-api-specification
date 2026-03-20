@REQ_MCA-3873
Feature: Create MODEL CAR-made-by-model-car-brand Relationship

  @RULE_MCA-3876
  Rule: Requests to create a ›made-by-model-car-brand‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3879 @implemented
    Scenario: Trying to create a ›made-by-model-car-brand‹ relationship where both IDs are invalid
      Given "MODEL CAR" "F40 Scale Model" does NOT exist
      And "MODEL CAR BRAND" "Matchbox" does NOT exist
      When the user creates a "made by model car brand" relationship between "F40 Scale Model" and "Matchbox"
      Then the request should be rejected with status code 404
