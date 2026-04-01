@REQ_MCA-4347
Feature: Create COMPANY-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a COMPANY
  So an API consumer can illustrate the COMPANY node in a frontend application

  @RULE_MCA-4356
  Rule: Each COMPANY can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4357 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "BMW AG" and "Promo Video"
      And the user creates a "has-video" relationship between "BMW AG" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "BMW AG" and "Promo Video"
      And there should exist a "has-video" relationship between "BMW AG" and "Promo Video (Part 2)"
