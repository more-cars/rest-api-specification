@REQ_MCA-2902
Feature: Delete MAGAZINE ISSUE-covers-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2905
  Rule: Requests to delete the ›covers-car-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2908 @implemented
    Scenario: Trying to delete a ›covers-car-model‹ relationship where both IDs are invalid
      Given "MAGAZINE ISSUE" "50 Jahre GTI" does NOT exist
      And "CAR MODEL" "Twingo" does NOT exist
      When the user deletes the "covers car model" relationship between "50 Jahre GTI" and "Twingo"
      Then the request should be rejected with status code 404
