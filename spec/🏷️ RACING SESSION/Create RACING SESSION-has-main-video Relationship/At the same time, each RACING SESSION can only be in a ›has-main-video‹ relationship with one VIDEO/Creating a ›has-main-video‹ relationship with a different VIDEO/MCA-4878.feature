@REQ_MCA-4868
Feature: Create RACING SESSION-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING SESSION
  So an API consumer can instantly load the VIDEO that best represents the RACING SESSION

  @RULE_MCA-4877
  Rule: At the same time, each RACING SESSION can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4878 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Qualifying" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Qualifying" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Qualifying" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Qualifying" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Qualifying" and "Promo Video"
