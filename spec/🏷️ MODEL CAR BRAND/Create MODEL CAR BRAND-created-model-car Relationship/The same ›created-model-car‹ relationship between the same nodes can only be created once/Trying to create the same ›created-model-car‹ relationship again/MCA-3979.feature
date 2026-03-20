@REQ_MCA-3971
Feature: Create MODEL CAR BRAND-created-model-car Relationship

  @RULE_MCA-3978
  Rule: The same ›created-model-car‹ relationship between the same nodes can only be created once

    @TEST_MCA-3979 @implemented
    Scenario: Trying to create the same ›created-model-car‹ relationship again
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "MODEL CAR" "Camaro Hot Wheels"
      And there exists a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels"
      When the user creates a "created model car" relationship between "Hot Wheels" and "Camaro Hot Wheels"
      Then the response should return with status code 304
