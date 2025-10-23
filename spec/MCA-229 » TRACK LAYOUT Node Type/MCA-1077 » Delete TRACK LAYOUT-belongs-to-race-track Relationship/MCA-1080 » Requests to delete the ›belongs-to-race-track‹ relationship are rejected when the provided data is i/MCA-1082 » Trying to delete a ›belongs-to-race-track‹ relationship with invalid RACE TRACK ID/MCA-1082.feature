@REQ_MCA-1077
Feature: Delete TRACK LAYOUT-belongs-to-race-track Relationship
  As an API contributor
  I want to be able to disconnect RACE TRACKS from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-1080
  Rule: Requests to delete the ›belongs-to-race-track‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1082 @implemented
    Scenario: Trying to delete a ›belongs-to-race-track‹ relationship with invalid RACE TRACK ID
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And "RACE TRACK" "Silverstone" does NOT exist
      When the user deletes the "belongs to race track" relationship between "Nordschleife" and "Silverstone"
      Then the request should be rejected with status code 404
