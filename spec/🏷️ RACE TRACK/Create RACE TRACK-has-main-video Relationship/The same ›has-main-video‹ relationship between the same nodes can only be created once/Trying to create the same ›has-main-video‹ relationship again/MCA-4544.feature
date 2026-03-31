@REQ_MCA-4536
Feature: Create RACE TRACK-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACE TRACK
  So an API consumer can instantly load the VIDEO that best represents the RACE TRACK

  @RULE_MCA-4543
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4544
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Nürburgring" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Nürburgring" and "Promo Video"
      Then the response should return with status code 304
