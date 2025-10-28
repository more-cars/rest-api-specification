@REQ_MCA-2027
Feature: Delete TRACK LAYOUT-has-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-2030
  Rule: Requests to delete the ›has-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2033 @implemented
    Scenario: Trying to delete a ›has-lap-time‹ relationship where both IDs are invalid
      Given "TRACK LAYOUT" "Nordschleife" does NOT exist
      And "LAP TIME" "AVUS fastest lap" does NOT exist
      When the user deletes the "has lap time" relationship between "Nordschleife" and "AVUS fastest lap"
      Then the request should be rejected with status code 404
