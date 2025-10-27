@REQ_MCA-1202
Feature: Delete RACING SERIES-has-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1205
  Rule: Requests to delete the ›has-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1206 @implemented
    Scenario: Trying to delete a ›has-racing-event‹ relationship with invalid RACING SERIES ID
      Given "RACING SERIES" "Formula 1" does NOT exist
      And there exists a "RACING EVENT" "Thruxton Club Event"
      When the user deletes the "has racing event" relationship between "Formula 1" and "Thruxton Club Event"
      Then the request should be rejected with status code 404
