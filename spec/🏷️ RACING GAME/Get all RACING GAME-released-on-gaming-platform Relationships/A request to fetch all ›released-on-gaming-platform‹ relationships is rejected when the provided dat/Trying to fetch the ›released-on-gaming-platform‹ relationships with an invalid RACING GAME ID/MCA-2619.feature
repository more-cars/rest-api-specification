@REQ_MCA-2613
Feature: Get all RACING GAME-released-on-gaming-platform Relationships

  @RULE_MCA-2618
  Rule: A request to fetch all ›released-on-gaming-platform‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2619 @implemented
    Scenario: Trying to fetch the ›released-on-gaming-platform‹ relationships with an invalid RACING GAME ID
      Given "RACING GAME" "F1 2020" does NOT exist
      When the user requests all "released on gaming platform" relationships for "F1 2020"
      Then the request should be rejected with status code 404
