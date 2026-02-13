@REQ_MCA-2613
Feature: Get all RACING GAME-released-on-gaming-platform Relationships

  @RULE_MCA-2614
  Rule: A list of all ›released-on-gaming-platform‹ relationships is returned when the provided data is valid

    @TEST_MCA-2615 @implemented
    Scenario: Requesting the ›released-on-gaming-platform‹ relationships when at least one exists
      Given there exists a "RACING GAME" "F1 2020"
      And there exist 3 "released on gaming platform" relationships for "F1 2020"
      When the user requests all "released on gaming platform" relationships for "F1 2020"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "released on gaming platform" relationships
