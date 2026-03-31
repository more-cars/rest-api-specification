@REQ_MCA-4922
Feature: Create LAP TIME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a LAP TIME
  So an API consumer can instantly load the VIDEO that best represents the LAP TIME

  @RULE_MCA-4931
  Rule: At the same time, each LAP TIME can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4932
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Fastest Lap" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Fastest Lap" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Fastest Lap" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Fastest Lap" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Fastest Lap" and "Promo Video"
