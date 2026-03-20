@REQ_MCA-4172
Feature: Delete CAR MODEL VARIANT-has-price Relationship
  As an API contributor
  I want to be able to disconnect PRICES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-4173
  Rule: The ›has-price‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4174 @implemented
    Scenario: Deleting the ›has-price‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "PRICE" "test price"
      And there exists a "has price" relationship "R" between "BMW M3" and "test price"
      When the user deletes the "has price" relationship between "BMW M3" and "test price"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
