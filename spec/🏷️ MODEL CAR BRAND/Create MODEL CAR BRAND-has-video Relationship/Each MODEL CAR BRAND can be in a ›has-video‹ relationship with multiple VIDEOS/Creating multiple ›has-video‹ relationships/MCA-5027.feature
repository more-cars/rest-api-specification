@REQ_MCA-5017
Feature: Create MODEL CAR BRAND-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MODEL CAR BRAND
  So an API consumer can illustrate the MODEL CAR BRAND node in a frontend application

  @RULE_MCA-5026
  Rule: Each MODEL CAR BRAND can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-5027 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Hot Wheels" and "Promo Video"
      And the user creates a "has-video" relationship between "Hot Wheels" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Hot Wheels" and "Promo Video"
      And there should exist a "has-video" relationship between "Hot Wheels" and "Promo Video (Part 2)"
