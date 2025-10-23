@REQ_MCA-1428
Feature: Get all RACING EVENT-has-image Relationships

  @RULE_MCA-1429
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-1430 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "RACING EVENT" "GP Silverstone"
      And there exist 3 "has image" relationships for "GP Silverstone"
      When the user requests all "has image" relationships for "GP Silverstone"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
