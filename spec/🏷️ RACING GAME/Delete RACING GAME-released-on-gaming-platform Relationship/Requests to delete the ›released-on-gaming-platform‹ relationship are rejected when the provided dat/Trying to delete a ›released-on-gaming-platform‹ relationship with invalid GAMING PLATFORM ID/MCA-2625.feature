@REQ_MCA-2620
Feature: Delete RACING GAME-released-on-gaming-platform Relationship
  As an API contributor
  I want to be able to disconnect GAMING PLATFORMS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2623
  Rule: Requests to delete the ›released-on-gaming-platform‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2625 @implemented
    Scenario: Trying to delete a ›released-on-gaming-platform‹ relationship with invalid GAMING PLATFORM ID
      Given there exists a "RACING GAME" "Gran Turismo"
      And "GAMING PLATFORM" "Xbox 360" does NOT exist
      When the user deletes the "released on gaming platform" relationship between "Gran Turismo" and "Xbox 360"
      Then the request should be rejected with status code 404
