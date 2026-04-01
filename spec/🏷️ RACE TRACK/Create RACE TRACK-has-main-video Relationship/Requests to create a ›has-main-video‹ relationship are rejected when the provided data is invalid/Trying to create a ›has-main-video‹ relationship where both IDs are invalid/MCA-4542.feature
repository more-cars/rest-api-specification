@REQ_MCA-4536
Feature: Create RACE TRACK-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a RACE TRACK
  So an API consumer can instantly load the VIDEO that best represents the RACE TRACK

  @RULE_MCA-4539
  Rule: Requests to create a ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4542 @implemented
    Scenario: Trying to create a ›has-main-video‹ relationship where both IDs are invalid
      Given "RACE TRACK" "Nürburgring" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-main-video" relationship between "Nürburgring" and "Promo Video"
      Then the request should be rejected with status code 404
