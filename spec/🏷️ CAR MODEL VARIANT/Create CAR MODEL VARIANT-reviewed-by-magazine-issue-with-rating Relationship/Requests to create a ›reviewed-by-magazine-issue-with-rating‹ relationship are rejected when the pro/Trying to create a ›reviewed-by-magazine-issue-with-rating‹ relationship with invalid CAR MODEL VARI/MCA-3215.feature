@REQ_MCA-3211
Feature: Create CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationship

  @RULE_MCA-3214
  Rule: Requests to create a ›reviewed-by-magazine-issue-with-rating‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3215 @implemented
    Scenario: Trying to create a ›reviewed-by-magazine-issue-with-rating‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      And there exists a "RATING" "93 Percent"
      When the user creates a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent"
      Then the request should be rejected with status code 404
