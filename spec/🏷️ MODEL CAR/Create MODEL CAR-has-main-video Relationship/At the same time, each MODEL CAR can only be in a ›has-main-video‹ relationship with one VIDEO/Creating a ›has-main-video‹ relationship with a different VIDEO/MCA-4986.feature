@REQ_MCA-4976
Feature: Create MODEL CAR-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MODEL CAR
  So an API consumer can instantly load the VIDEO that best represents the MODEL CAR

  @RULE_MCA-4985
  Rule: At the same time, each MODEL CAR can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4986
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "MODEL CAR" "Hot Wheels F40"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Hot Wheels F40" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Hot Wheels F40" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
