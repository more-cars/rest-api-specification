@REQ_MCA-4181
Feature: Create CAR MODEL VARIANT-has-scale-model Relationship

  @RULE_MCA-4188
  Rule: The same ›has-scale-model‹ relationship between the same nodes can only be created once

    @TEST_MCA-4189 @implemented
    Scenario: Trying to create the same ›has-scale-model‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "MODEL CAR" "Hotwheels M3"
      And there exists a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3"
      When the user creates a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3"
      Then the response should return with status code 304
