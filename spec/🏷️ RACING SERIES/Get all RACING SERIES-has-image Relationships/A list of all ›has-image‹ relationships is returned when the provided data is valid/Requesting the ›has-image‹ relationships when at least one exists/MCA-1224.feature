@REQ_MCA-1222
Feature: Get all RACING SERIES-has-image Relationships

  @RULE_MCA-1223
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-1224 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "RACING SERIES" "DTM"
      And there exist 3 "has image" relationships for "DTM"
      When the user requests all "has image" relationships for "DTM"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
