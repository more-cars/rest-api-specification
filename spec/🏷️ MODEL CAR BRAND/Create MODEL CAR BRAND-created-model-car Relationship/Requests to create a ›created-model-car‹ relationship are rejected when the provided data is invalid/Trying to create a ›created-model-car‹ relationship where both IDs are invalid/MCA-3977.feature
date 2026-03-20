@REQ_MCA-3971
Feature: Create MODEL CAR BRAND-created-model-car Relationship

  @RULE_MCA-3974
  Rule: Requests to create a ›created-model-car‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3977 @implemented
    Scenario: Trying to create a ›created-model-car‹ relationship where both IDs are invalid
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And "MODEL CAR" "Camaro Hot Wheels" does NOT exist
      When the user creates a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels"
      Then the request should be rejected with status code 404
