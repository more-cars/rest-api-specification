@REQ_MCA-3010
Feature: Delete CAR MODEL VARIANT-is-presented-in-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3013
  Rule: Requests to delete the ›is-presented-in-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3016 @implemented
    Scenario: Trying to delete a ›is-presented-in-magazine-issue‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      And "MAGAZINE ISSUE" "EV Today 2_2025" does NOT exist
      When the user deletes the "is presented in magazine issue" relationship between "McLaren 750S" and "EV Today 2_2025"
      Then the request should be rejected with status code 404
