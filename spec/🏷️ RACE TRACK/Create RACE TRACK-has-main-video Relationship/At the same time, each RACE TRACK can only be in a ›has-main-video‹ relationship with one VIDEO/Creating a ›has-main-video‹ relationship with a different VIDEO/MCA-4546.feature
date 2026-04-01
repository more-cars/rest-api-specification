@REQ_MCA-4536
Feature: Create RACE TRACK-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACE TRACK
  So an API consumer can instantly load the VIDEO that best represents the RACE TRACK

  @RULE_MCA-4545
  Rule: At the same time, each RACE TRACK can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-4546 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Nürburgring" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Nürburgring" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Nürburgring" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Nürburgring" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Nürburgring" and "Promo Video"
