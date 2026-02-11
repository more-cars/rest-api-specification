@REQ_MCA-2393
Feature: Get all RACING GAME-has-image Relationships

  @RULE_MCA-2394
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-2395 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "RACING GAME" "F1 2025"
      And there exist 3 "has image" relationships for "F1 2025"
      When the user requests all "has image" relationships for "F1 2025"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
