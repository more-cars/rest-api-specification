@REQ_MCA-2000
Feature: Delete LAP TIME-achieved-on-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-2003
  Rule: Requests to delete the ›achieved-on-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2006 @implemented
    Scenario: Trying to delete a ›achieved-on-track-layout‹ relationship where both IDs are invalid
      Given "LAP TIME" "AVUS fastest lap" does NOT exist
      And "TRACK LAYOUT" "Norschleife" does NOT exist
      When the user deletes the "achieved on track layout" relationship between "AVUS fastest lap" and "Norschleife"
      Then the request should be rejected with status code 404
