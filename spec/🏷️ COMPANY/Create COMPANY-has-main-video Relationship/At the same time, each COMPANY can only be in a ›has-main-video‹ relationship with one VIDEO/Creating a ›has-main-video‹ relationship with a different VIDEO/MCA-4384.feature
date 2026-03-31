@REQ_MCA-4374
Feature: Create COMPANY-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a COMPANY
  So an API consumer can instantly load the VIDEO that best represents the COMPANY

  @RULE_MCA-4383
  Rule: At the same time, each COMPANY can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4384
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "BMW AG" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "BMW AG" and "Promo Video"
      When the user creates a "has-main-video" relationship between "BMW AG" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "BMW AG" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "BMW AG" and "Promo Video"
