@REQ_MCA-3003
Feature: Get all CAR MODEL VARIANT-is-presented-in-magazine-issue Relationships

  @RULE_MCA-3008
  Rule: A request to fetch all ›is-presented-in-magazine-issue‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3009
    Scenario: Trying to fetch the ›is-presented-in-magazine-issue‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      When the user requests all "is presented in magazine issue" relationships for "McLaren 750S"
      Then the request should be rejected with status code 404
