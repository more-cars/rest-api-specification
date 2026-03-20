@REQ_MCA-4199
Feature: Delete CAR MODEL VARIANT-has-scale-model Relationship
  As an API contributor
  I want to be able to disconnect MODEL CARS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-4200
  Rule: The ›has-scale-model‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4201 @implemented
    Scenario: Deleting the ›has-scale-model‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "MODEL CAR" "Ferrari F40"
      And there exists a "has scale model" relationship "R" between "BMW M3 CSL" and "Ferrari F40"
      When the user deletes the "has scale model" relationship between "BMW M3 CSL" and "Ferrari F40"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
