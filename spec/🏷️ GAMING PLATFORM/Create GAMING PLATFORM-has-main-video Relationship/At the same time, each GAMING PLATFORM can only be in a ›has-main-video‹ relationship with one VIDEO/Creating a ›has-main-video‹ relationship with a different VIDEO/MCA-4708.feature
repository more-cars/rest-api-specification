@REQ_MCA-4698
Feature: Create GAMING PLATFORM-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a GAMING PLATFORM
  So an API consumer can instantly load the VIDEO that best represents the GAMING PLATFORM

  @RULE_MCA-4707
  Rule: At the same time, each GAMING PLATFORM can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4708 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Xbox" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Xbox" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Xbox" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Xbox" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Xbox" and "Promo Video"
