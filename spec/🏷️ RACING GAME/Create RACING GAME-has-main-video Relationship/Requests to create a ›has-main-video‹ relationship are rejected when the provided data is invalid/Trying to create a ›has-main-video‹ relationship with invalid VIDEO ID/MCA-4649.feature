@REQ_MCA-4644
Feature: Create RACING GAME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING GAME
  So an API consumer can instantly load the VIDEO that best represents the RACING GAME

  @RULE_MCA-4647
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4649 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACING GAME" "Assetto Corsa"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
