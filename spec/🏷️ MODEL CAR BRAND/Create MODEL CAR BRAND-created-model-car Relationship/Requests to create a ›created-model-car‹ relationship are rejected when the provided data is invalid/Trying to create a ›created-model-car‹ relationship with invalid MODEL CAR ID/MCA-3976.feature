@REQ_MCA-3971
Feature: Create MODEL CAR BRAND-created-model-car Relationship

  @RULE_MCA-3974
  Rule: Requests to create a ›created-model-car‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3976 @implemented
    Scenario: Trying to create a ›created-model-car‹ relationship with invalid MODEL CAR ID
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And "MODEL CAR" "Camaro Hot Wheels" does NOT exist
      When the user creates a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels"
      Then the request should be rejected with status code 404
