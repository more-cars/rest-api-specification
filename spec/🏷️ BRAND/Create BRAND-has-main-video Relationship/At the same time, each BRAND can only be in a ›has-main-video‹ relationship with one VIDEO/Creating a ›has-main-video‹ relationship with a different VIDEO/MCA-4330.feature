@REQ_MCA-4320
Feature: Create BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a BRAND
  So an API consumer can instantly load the VIDEO that best represents the BRAND

  @RULE_MCA-4329
  Rule: At the same time, each BRAND can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4330 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "BRAND" "BMW"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "BMW" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "BMW" and "Promo Video"
      When the user creates a "has-main-video" relationship between "BMW" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "BMW" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "BMW" and "Promo Video"
