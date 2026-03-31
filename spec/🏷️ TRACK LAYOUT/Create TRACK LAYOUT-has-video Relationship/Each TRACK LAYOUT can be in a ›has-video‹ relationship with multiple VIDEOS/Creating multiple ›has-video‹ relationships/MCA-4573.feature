@REQ_MCA-4563
Feature: Create TRACK LAYOUT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a TRACK LAYOUT
  So an API consumer can illustrate the TRACK LAYOUT node in a frontend application

  @RULE_MCA-4572
  Rule: Each TRACK LAYOUT can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4573
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Nordschleife" and "Promo Video"
      And the user creates a "has-video" relationship between "Nordschleife" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Nordschleife" and "Promo Video"
      And there should exist a "has-video" relationship between "Nordschleife" and "Promo Video (Part 2)"
