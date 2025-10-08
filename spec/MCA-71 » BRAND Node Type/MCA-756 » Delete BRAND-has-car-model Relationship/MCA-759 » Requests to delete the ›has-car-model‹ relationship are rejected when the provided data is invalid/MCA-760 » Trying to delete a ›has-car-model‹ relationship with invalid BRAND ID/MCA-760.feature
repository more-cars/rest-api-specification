@REQ_MCA-756
Feature: Delete BRAND-has-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-759
  Rule: Requests to delete the ›has-car-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-760
    Scenario: Trying to delete a ›has-car-model‹ relationship with invalid BRAND ID
      Given "BRAND" "Bugati" does NOT exist
      And there exists a "CAR MODEL" "Veyron"
      When the user deletes the "has-car-model" relationship between "Bugati" and "Veyron"
      Then the request should be rejected with status code 404
