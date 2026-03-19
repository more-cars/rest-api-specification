@REQ_MCA-3971
Feature: Create MODEL CAR BRAND-created-model-car Relationship

  @RULE_MCA-3974
  Rule: Requests to create a ›created-model-car‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3975
    Scenario: Trying to create a ›created-model-car‹ relationship with invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      And there exists a "MODEL CAR" "Camaro Hot Wheels"
      When the user creates a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels"
      Then the request should be rejected with status code 404
