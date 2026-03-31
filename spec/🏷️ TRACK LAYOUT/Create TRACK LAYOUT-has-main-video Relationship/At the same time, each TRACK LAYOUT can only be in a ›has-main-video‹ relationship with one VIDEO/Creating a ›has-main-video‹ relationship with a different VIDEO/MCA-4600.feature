@REQ_MCA-4590
Feature: Create TRACK LAYOUT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a TRACK LAYOUT
  So an API consumer can instantly load the VIDEO that best represents the TRACK LAYOUT

  @RULE_MCA-4599
  Rule: At the same time, each TRACK LAYOUT can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4600
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Nordschleife" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Nordschleife" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Nordschleife" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Nordschleife" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Nordschleife" and "Promo Video"
