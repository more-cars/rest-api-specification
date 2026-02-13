@REQ_MCA-2620
Feature: Delete RACING GAME-released-on-gaming-platform Relationship
  As an API contributor
  I want to be able to disconnect GAMING PLATFORMS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2627
  Rule: Requests to delete the ›released-on-gaming-platform‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2628 @implemented
    Scenario: Trying to delete a non-existent ›released-on-gaming-platform‹ relationship
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exists a "GAMING PLATFORM" "Xbox 360"
      And there exists NO "released on gaming platform" relationship between "Gran Turismo" and "Xbox 360"
      When the user deletes the "released on gaming platform" relationship between "Gran Turismo" and "Xbox 360"
      Then the request should be rejected with status code 404
