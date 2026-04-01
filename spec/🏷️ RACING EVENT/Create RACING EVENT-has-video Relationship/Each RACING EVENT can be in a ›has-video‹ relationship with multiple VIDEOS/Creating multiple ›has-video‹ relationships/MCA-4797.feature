@REQ_MCA-4787
Feature: Create RACING EVENT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING EVENT
  So an API consumer can illustrate the RACING EVENT node in a frontend application

  @RULE_MCA-4796
  Rule: Each RACING EVENT can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4797 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "F1 GP Monaco" and "Promo Video"
      And the user creates a "has-video" relationship between "F1 GP Monaco" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "F1 GP Monaco" and "Promo Video"
      And there should exist a "has-video" relationship between "F1 GP Monaco" and "Promo Video (Part 2)"
