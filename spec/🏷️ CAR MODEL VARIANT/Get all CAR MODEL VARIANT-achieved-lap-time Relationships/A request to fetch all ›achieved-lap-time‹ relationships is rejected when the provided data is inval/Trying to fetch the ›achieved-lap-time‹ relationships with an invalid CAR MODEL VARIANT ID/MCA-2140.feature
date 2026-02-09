@REQ_MCA-2134
Feature: Get all CAR MODEL VARIANT-achieved-lap-time Relationships

  @RULE_MCA-2139
  Rule: A request to fetch all ›achieved-lap-time‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2140 @implemented
    Scenario: Trying to fetch the ›achieved-lap-time‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 GTR" does NOT exist
      When the user requests all "achieved lap time" relationships for "BMW M3 GTR"
      Then the request should be rejected with status code 404
