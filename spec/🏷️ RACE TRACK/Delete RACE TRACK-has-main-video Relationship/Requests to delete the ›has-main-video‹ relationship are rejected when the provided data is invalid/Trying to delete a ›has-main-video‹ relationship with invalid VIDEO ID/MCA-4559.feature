@REQ_MCA-4554
Feature: Delete RACE TRACK-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACE TRACK
  So I can clean up bad data or test data

  @RULE_MCA-4557
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4559 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACE TRACK" "Nürburgring"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "Nürburgring" and "Promo Video"
      Then the request should be rejected with status code 404
