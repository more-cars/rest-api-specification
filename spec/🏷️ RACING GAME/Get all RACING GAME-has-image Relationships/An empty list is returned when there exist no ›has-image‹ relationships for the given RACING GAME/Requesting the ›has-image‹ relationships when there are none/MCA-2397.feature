@REQ_MCA-2393
Feature: Get all RACING GAME-has-image Relationships

  @RULE_MCA-2396
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given RACING GAME

    @TEST_MCA-2397 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "RACING GAME" "F1 2025"
      And there exist 0 "has image" relationships for "F1 2025"
      When the user requests all "has image" relationships for "F1 2025"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
