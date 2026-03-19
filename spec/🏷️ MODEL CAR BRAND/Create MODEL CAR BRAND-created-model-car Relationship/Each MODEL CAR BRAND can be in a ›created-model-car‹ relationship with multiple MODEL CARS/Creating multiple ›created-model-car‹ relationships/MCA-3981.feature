@REQ_MCA-3971
Feature: Create MODEL CAR BRAND-created-model-car Relationship

  @RULE_MCA-3980
  Rule: Each MODEL CAR BRAND can be in a ›created-model-car‹ relationship with multiple MODEL CARS

    @TEST_MCA-3981
    Scenario: Creating multiple ›created-model-car‹ relationships
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "MODEL CAR" "Camaro Hot Wheels"
      And there exists a "MODEL CAR" "Camaro Hot Wheels (Alternative)"
      When the user creates a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels"
      And the user creates a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels (Alternative)"
      Then there should exist a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels"
      And there should exist a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels (Alternative)"
