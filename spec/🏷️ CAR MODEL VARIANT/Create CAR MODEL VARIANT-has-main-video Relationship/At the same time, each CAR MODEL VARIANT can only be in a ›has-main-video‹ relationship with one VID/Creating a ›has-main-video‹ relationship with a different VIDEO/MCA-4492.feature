@REQ_MCA-4482
Feature: Create CAR MODEL VARIANT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a CAR MODEL VARIANT
  So an API consumer can instantly load the VIDEO that best represents the CAR MODEL VARIANT

  @RULE_MCA-4491
  Rule: At the same time, each CAR MODEL VARIANT can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4492 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "BMW M3 CSL" and "Promo Video"
      When the user creates a "has-main-video" relationship between "BMW M3 CSL" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "BMW M3 CSL" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "BMW M3 CSL" and "Promo Video"
