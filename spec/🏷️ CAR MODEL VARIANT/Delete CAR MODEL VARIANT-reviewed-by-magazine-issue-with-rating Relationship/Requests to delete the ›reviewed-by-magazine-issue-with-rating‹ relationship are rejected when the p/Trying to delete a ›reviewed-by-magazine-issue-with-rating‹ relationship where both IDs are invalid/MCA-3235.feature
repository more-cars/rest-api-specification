@REQ_MCA-3229
Feature: Delete CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationship
  As an API contributor
  I want to be able to disconnect RATINGS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3232
  Rule: Requests to delete the ›reviewed-by-magazine-issue-with-rating‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3235 @implemented
    Scenario: Trying to delete a ›reviewed-by-magazine-issue-with-rating‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      And "RATING" "invalid rating" does NOT exist
      When the user deletes the "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "invalid rating"
      Then the request should be rejected with status code 404
