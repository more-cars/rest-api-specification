@REQ_MCA-6007
Feature: Create BOOK-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a BOOK
  So an API consumer can instantly load the VIDEO that best represents the BOOK

  @RULE_MCA-6016
  Rule: At the same time, each BOOK can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-6017 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      When the user creates a "has-main-video" relationship between "F1 in Numbers" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "F1 in Numbers" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
