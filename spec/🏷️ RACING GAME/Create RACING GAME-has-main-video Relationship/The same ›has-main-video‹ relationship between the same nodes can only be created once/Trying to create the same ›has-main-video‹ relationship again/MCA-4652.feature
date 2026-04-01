@REQ_MCA-4644
Feature: Create RACING GAME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING GAME
  So an API consumer can instantly load the VIDEO that best represents the RACING GAME

  @RULE_MCA-4651
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4652 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the response should return with status code 304
