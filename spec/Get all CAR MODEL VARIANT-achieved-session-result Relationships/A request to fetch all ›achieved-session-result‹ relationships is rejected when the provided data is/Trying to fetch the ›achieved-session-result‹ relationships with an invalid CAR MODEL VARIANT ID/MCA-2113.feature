@REQ_MCA-2107
Feature: Get all CAR MODEL VARIANT-achieved-session-result Relationships

  @RULE_MCA-2112
  Rule: A request to fetch all ›achieved-session-result‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2113 @implemented
    Scenario: Trying to fetch the ›achieved-session-result‹ relationships with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 GTR" does NOT exist
      When the user requests all "achieved session result" relationships for "BMW M3 GTR"
      Then the request should be rejected with status code 404
