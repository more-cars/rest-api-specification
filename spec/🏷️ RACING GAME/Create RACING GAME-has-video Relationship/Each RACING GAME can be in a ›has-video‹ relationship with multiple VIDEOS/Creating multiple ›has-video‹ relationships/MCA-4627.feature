@REQ_MCA-4617
Feature: Create RACING GAME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING GAME
  So an API consumer can illustrate the RACING GAME node in a frontend application

  @RULE_MCA-4626
  Rule: Each RACING GAME can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4627 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Assetto Corsa" and "Promo Video"
      And the user creates a "has-video" relationship between "Assetto Corsa" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Assetto Corsa" and "Promo Video"
      And there should exist a "has-video" relationship between "Assetto Corsa" and "Promo Video (Part 2)"
