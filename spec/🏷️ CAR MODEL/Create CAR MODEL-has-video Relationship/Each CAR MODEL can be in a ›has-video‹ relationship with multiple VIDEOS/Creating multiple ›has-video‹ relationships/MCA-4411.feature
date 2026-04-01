@REQ_MCA-4401
Feature: Create CAR MODEL-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a CAR MODEL
  So an API consumer can illustrate the CAR MODEL node in a frontend application

  @RULE_MCA-4410
  Rule: Each CAR MODEL can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4411 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "CAR MODEL" "Testarossa"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Testarossa" and "Promo Video"
      And the user creates a "has-video" relationship between "Testarossa" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Testarossa" and "Promo Video"
      And there should exist a "has-video" relationship between "Testarossa" and "Promo Video (Part 2)"
