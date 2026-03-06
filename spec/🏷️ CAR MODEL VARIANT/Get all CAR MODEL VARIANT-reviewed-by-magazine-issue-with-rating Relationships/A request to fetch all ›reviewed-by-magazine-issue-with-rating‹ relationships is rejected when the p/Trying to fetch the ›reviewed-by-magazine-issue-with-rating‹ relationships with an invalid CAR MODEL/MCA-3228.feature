@REQ_MCA-3222
Feature: Get all CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationships

  @RULE_MCA-3227
  Rule: A request to fetch all ›reviewed-by-magazine-issue-with-rating‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3228 @implemented
    Scenario: Trying to fetch the ›reviewed-by-magazine-issue-with-rating‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      When the user requests all "reviewed by magazine issue with rating" relationships for "McLaren 750S"
      Then the request should be rejected with status code 404
