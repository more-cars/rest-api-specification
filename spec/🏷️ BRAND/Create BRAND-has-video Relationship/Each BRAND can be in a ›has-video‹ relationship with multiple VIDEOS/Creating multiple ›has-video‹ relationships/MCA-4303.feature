@REQ_MCA-4293
Feature: Create BRAND-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a BRAND
  So an API consumer can illustrate the BRAND node in a frontend application

  @RULE_MCA-4302
  Rule: Each BRAND can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4303 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "BRAND" "BMW"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "BMW" and "Promo Video"
      And the user creates a "has-video" relationship between "BMW" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "BMW" and "Promo Video"
      And there should exist a "has-video" relationship between "BMW" and "Promo Video (Part 2)"
