@REQ_MCA-6099
Feature: Get all CAR MODEL VARIANT-is-covered-by-book Relationships

  @RULE_MCA-6104
  Rule: A request to fetch all ›is-covered-by-book‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-6105 @implemented
    Scenario: Trying to fetch the ›is-covered-by-book‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "Ferrari SF-25" does NOT exist
      When the user requests all "is covered by book" relationships for "Ferrari SF-25"
      Then the request should be rejected with status code 404
