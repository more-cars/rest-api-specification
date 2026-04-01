@REQ_MCA-4733
Feature: Create RACING SERIES-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING SERIES
  So an API consumer can illustrate the RACING SERIES node in a frontend application

  @RULE_MCA-4742
  Rule: Each RACING SERIES can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4743 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Formula 1" and "Promo Video"
      And the user creates a "has-video" relationship between "Formula 1" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Formula 1" and "Promo Video"
      And there should exist a "has-video" relationship between "Formula 1" and "Promo Video (Part 2)"
