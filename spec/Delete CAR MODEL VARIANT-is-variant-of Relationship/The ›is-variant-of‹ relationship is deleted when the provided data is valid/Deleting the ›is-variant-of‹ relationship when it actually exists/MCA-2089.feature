@REQ_MCA-2087
Feature: Delete CAR MODEL VARIANT-is-variant-of Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2088
  Rule: The ›is-variant-of‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2089 @implemented
    Scenario: Deleting the ›is-variant-of‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "CAR MODEL" "Corolla"
      And there exists a "is variant of" relationship "R" between "BMW M3" and "Corolla"
      When the user deletes the "is variant of" relationship between "BMW M3" and "Corolla"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
