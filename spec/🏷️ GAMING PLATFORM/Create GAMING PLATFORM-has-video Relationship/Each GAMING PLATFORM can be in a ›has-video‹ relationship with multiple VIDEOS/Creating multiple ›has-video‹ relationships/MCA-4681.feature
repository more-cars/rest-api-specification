@REQ_MCA-4671
Feature: Create GAMING PLATFORM-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a GAMING PLATFORM
  So an API consumer can illustrate the GAMING PLATFORM node in a frontend application

  @RULE_MCA-4680
  Rule: Each GAMING PLATFORM can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4681 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Xbox" and "Promo Video"
      And the user creates a "has-video" relationship between "Xbox" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Xbox" and "Promo Video"
      And there should exist a "has-video" relationship between "Xbox" and "Promo Video (Part 2)"
