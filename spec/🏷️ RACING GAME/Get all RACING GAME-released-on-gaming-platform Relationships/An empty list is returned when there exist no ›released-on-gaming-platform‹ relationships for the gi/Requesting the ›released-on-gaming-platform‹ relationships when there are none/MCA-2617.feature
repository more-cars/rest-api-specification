@REQ_MCA-2613
Feature: Get all RACING GAME-released-on-gaming-platform Relationships

  @RULE_MCA-2616
  Rule: An empty list is returned when there exist no ›released-on-gaming-platform‹ relationships for the given RACING GAME

    @TEST_MCA-2617 @implemented
    Scenario: Requesting the ›released-on-gaming-platform‹ relationships when there are none
      Given there exists a "RACING GAME" "F1 2020"
      And there exist 0 "released on gaming platform" relationships for "F1 2020"
      When the user requests all "released on gaming platform" relationships for "F1 2020"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
