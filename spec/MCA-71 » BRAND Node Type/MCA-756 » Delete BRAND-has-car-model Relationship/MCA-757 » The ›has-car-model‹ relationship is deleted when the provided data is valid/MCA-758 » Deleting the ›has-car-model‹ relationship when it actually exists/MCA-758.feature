@REQ_MCA-756
Feature: Delete BRAND-has-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-757
  Rule: The ›has-car-model‹ relationship is deleted when the provided data is valid

    @TEST_MCA-758
    Scenario: Deleting the ›has-car-model‹ relationship when it actually exists
      Given there exists a "BRAND" "Bugati"
      And there exists a "CAR MODEL" "Veyron"
      And there exists a "has-car-model" relationship "R" between "Bugati" and "Veyron"
      When the user deletes the "has-car-model" relationship between "Bugati" and "Veyron"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
