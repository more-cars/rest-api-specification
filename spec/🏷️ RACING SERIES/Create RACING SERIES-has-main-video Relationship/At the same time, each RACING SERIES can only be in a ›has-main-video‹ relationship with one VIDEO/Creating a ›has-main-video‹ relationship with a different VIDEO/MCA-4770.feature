@REQ_MCA-4760
Feature: Create RACING SERIES-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING SERIES
  So an API consumer can instantly load the VIDEO that best represents the RACING SERIES

  @RULE_MCA-4769
  Rule: At the same time, each RACING SERIES can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4770 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Formula 1" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Formula 1" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Formula 1" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Formula 1" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Formula 1" and "Promo Video"
