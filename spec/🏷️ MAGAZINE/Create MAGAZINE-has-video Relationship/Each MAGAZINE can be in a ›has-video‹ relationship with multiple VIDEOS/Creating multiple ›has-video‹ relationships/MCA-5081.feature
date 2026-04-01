@REQ_MCA-5071
Feature: Create MAGAZINE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MAGAZINE
  So an API consumer can illustrate the MAGAZINE node in a frontend application

  @RULE_MCA-5080
  Rule: Each MAGAZINE can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-5081 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Top Gear" and "Promo Video"
      And the user creates a "has-video" relationship between "Top Gear" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Top Gear" and "Promo Video"
      And there should exist a "has-video" relationship between "Top Gear" and "Promo Video (Part 2)"
