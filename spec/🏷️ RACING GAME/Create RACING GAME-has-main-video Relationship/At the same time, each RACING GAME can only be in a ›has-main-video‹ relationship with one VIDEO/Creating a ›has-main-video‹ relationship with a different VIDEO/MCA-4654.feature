@REQ_MCA-4644
Feature: Create RACING GAME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING GAME
  So an API consumer can instantly load the VIDEO that best represents the RACING GAME

  @RULE_MCA-4653
  Rule: At the same time, each RACING GAME can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4654
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Assetto Corsa" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Assetto Corsa" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
