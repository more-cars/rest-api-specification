@REQ_MCA-4949
Feature: Create MODEL CAR-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MODEL CAR
  So an API consumer can illustrate the MODEL CAR node in a frontend application

  @RULE_MCA-4958
  Rule: Each MODEL CAR can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4959 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      And the user creates a "has-video" relationship between "Hot Wheels F40" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Hot Wheels F40" and "Promo Video"
      And there should exist a "has-video" relationship between "Hot Wheels F40" and "Promo Video (Part 2)"
