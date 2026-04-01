@REQ_MCA-4644
Feature: Create RACING GAME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING GAME
  So an API consumer can instantly load the VIDEO that best represents the RACING GAME

  @RULE_MCA-4647
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4648 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "Assetto Corsa" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
