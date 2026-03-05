@REQ_MCA-2992
Feature: Create CAR MODEL VARIANT-is-presented-in-magazine-issue Relationship

  @RULE_MCA-2995
  Rule: Requests to create a ›is-presented-in-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2998 @implemented
    Scenario: Trying to create a ›is-presented-in-magazine-issue‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      And "MAGAZINE ISSUE" "Best Supercars 2025" does NOT exist
      When the user creates a "is presented in magazine issue" relationship between "McLaren 750S" and "Best Supercars 2025"
      Then the request should be rejected with status code 404
