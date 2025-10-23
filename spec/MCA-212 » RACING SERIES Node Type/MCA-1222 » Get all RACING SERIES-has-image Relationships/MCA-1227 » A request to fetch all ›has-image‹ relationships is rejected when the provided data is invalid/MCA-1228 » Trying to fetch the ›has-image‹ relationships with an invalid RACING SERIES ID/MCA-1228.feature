@REQ_MCA-1222
Feature: Get all RACING SERIES-has-image Relationships

  @RULE_MCA-1227
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1228 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid RACING SERIES ID
      Given "RACING SERIES" "DTM" does NOT exist
      When the user requests all "has image" relationships for "DTM"
      Then the request should be rejected with status code 404
