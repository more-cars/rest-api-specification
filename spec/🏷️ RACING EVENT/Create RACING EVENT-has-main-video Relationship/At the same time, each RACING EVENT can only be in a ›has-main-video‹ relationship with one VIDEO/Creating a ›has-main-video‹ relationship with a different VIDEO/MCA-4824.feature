@REQ_MCA-4814
Feature: Create RACING EVENT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACING EVENT
  So an API consumer can instantly load the VIDEO that best represents the RACING EVENT

  @RULE_MCA-4823
  Rule: At the same time, each RACING EVENT can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4824
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "F1 GP Monaco" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "F1 GP Monaco" and "Promo Video"
      When the user creates a "has-main-video" relationship between "F1 GP Monaco" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "F1 GP Monaco" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "F1 GP Monaco" and "Promo Video"
