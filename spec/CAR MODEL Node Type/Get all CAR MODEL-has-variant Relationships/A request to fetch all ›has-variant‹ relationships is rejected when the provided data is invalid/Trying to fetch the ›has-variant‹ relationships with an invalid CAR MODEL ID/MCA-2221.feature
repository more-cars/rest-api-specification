@REQ_MCA-2215
Feature: Get all CAR MODEL-has-variant Relationships

  @RULE_MCA-2220
  Rule: A request to fetch all ›has-variant‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2221 @implemented
    Scenario: Trying to fetch the ›has-variant‹ relationships with an invalid CAR MODEL ID
      Given "CAR MODEL" "Golf" does NOT exist
      When the user requests all "has variant" relationships for "Golf"
      Then the request should be rejected with status code 404
