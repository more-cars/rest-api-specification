@REQ_MCA-3168
Feature: Get all RATING-has-image Relationships

  @RULE_MCA-3169
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-3170 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "RATING" "93 Percent"
      And there exist 3 "has image" relationships for "93 Percent"
      When the user requests all "has image" relationships for "93 Percent"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
