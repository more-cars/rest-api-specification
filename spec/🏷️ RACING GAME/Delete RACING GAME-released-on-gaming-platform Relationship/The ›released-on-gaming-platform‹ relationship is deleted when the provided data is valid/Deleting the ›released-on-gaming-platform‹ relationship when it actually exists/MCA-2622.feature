@REQ_MCA-2620
Feature: Delete RACING GAME-released-on-gaming-platform Relationship
  As an API contributor
  I want to be able to disconnect GAMING PLATFORMS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2621
  Rule: The ›released-on-gaming-platform‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2622 @implemented
    Scenario: Deleting the ›released-on-gaming-platform‹ relationship when it actually exists
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exists a "GAMING PLATFORM" "Xbox 360"
      And there exists a "released on gaming platform" relationship "R" between "Gran Turismo" and "Xbox 360"
      When the user deletes the "released on gaming platform" relationship between "Gran Turismo" and "Xbox 360"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
