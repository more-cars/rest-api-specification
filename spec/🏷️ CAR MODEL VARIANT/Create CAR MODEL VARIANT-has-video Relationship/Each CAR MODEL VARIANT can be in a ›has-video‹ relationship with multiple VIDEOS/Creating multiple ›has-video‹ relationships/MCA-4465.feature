@REQ_MCA-4455
Feature: Create CAR MODEL VARIANT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a CAR MODEL VARIANT
  So an API consumer can illustrate the CAR MODEL VARIANT node in a frontend application

  @RULE_MCA-4464
  Rule: Each CAR MODEL VARIANT can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4465
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      And the user creates a "has-video" relationship between "BMW M3 CSL" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      And there should exist a "has-video" relationship between "BMW M3 CSL" and "Promo Video (Part 2)"
