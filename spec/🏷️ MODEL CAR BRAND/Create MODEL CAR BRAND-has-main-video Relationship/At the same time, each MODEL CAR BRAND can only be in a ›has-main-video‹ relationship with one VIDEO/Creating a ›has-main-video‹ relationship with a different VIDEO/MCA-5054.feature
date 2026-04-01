@REQ_MCA-5044
Feature: Create MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MODEL CAR BRAND
  So an API consumer can instantly load the VIDEO that best represents the MODEL CAR BRAND

  @RULE_MCA-5053
  Rule: At the same time, each MODEL CAR BRAND can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-5054 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Hot Wheels" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Hot Wheels" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Hot Wheels" and "Promo Video"
