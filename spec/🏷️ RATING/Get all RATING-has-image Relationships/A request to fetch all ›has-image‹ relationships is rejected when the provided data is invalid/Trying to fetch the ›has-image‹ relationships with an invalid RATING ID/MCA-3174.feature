@REQ_MCA-3168
Feature: Get all RATING-has-image Relationships

  @RULE_MCA-3173
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3174 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid RATING ID
      Given "RATING" "93 Percent" does NOT exist
      When the user requests all "has image" relationships for "93 Percent"
      Then the request should be rejected with status code 404
