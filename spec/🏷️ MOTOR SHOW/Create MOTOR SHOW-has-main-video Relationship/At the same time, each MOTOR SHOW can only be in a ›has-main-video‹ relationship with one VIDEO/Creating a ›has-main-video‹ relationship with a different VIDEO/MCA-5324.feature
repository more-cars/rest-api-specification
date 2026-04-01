@REQ_MCA-5314
Feature: Create MOTOR SHOW-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MOTOR SHOW
  So an API consumer can instantly load the VIDEO that best represents the MOTOR SHOW

  @RULE_MCA-5323
  Rule: At the same time, each MOTOR SHOW can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-5324 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
      When the user creates a "has-main-video" relationship between "IAA Frankfurt" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "IAA Frankfurt" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
