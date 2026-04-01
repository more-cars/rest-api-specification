@REQ_MCA-4509
Feature: Create RACE TRACK-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACE TRACK
  So an API consumer can illustrate the RACE TRACK node in a frontend application

  @RULE_MCA-4512
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4513 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid RACE TRACK ID
      Given "RACE TRACK" "Nürburgring" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Nürburgring" and "Promo Video"
      Then the request should be rejected with status code 404
