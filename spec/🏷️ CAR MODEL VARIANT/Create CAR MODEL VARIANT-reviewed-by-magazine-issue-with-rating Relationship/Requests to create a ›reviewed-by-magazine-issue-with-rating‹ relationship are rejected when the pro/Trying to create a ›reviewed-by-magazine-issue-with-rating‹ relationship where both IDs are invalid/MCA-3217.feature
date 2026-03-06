@REQ_MCA-3211
Feature: Create CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationship

  @RULE_MCA-3214
  Rule: Requests to create a ›reviewed-by-magazine-issue-with-rating‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3217 @implemented
    Scenario: Trying to create a ›reviewed-by-magazine-issue-with-rating‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      And "RATING" "93 Percent" does NOT exist
      When the user creates a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent"
      Then the request should be rejected with status code 404
