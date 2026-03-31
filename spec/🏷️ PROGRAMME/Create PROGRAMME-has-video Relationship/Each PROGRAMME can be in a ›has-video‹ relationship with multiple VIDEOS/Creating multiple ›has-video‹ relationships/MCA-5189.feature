@REQ_MCA-5179
Feature: Create PROGRAMME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a PROGRAMME
  So an API consumer can illustrate the PROGRAMME node in a frontend application

  @RULE_MCA-5188
  Rule: Each PROGRAMME can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-5189
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "The Grand Tour" and "Promo Video"
      And the user creates a "has-video" relationship between "The Grand Tour" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "The Grand Tour" and "Promo Video"
      And there should exist a "has-video" relationship between "The Grand Tour" and "Promo Video (Part 2)"
