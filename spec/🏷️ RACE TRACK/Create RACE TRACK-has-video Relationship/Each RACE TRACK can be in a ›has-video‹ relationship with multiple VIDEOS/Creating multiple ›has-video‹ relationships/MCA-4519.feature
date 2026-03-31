@REQ_MCA-4509
Feature: Create RACE TRACK-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACE TRACK
  So an API consumer can illustrate the RACE TRACK node in a frontend application

  @RULE_MCA-4518
  Rule: Each RACE TRACK can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4519
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Nürburgring" and "Promo Video"
      And the user creates a "has-video" relationship between "Nürburgring" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Nürburgring" and "Promo Video"
      And there should exist a "has-video" relationship between "Nürburgring" and "Promo Video (Part 2)"
