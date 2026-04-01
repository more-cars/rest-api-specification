@REQ_MCA-4655
Feature: Get RACING GAME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING GAME
  So I can instantly load the VIDEO that best represents the RACING GAME

  @RULE_MCA-4660
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4661 @implemented
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid RACING GAME ID
      Given "RACING GAME" "Assetto Corsa" does NOT exist
      When the user requests the "has-main-video" relationship for "Assetto Corsa"
      Then the request should be rejected with status code 404
