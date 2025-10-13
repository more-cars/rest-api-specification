@REQ_MCA-803
Feature: Delete CAR MODEL-belongs-to-brand Relationship
  As an API contributor
  I want to be able to disconnect BRANDS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-806
  Rule: Requests to delete the ›belongs-to-brand‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-809 @implemented
    Scenario: Trying to delete a ›belongs-to-brand‹ relationship where both IDs are invalid
      Given "CAR MODEL" "XJ220" does NOT exist
      And "BRAND" "Audi" does NOT exist
      When the user deletes the "belongs to brand" relationship between "XJ220" and "Audi"
      Then the request should be rejected with status code 404
