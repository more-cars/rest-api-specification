@REQ_MCA-4509
Feature: Create RACE TRACK-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACE TRACK
  So an API consumer can illustrate the RACE TRACK node in a frontend application

  @RULE_MCA-4516
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4517
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Nürburgring" and "Promo Video"
      When the user creates a "has-video" relationship between "Nürburgring" and "Promo Video"
      Then the response should return with status code 304
