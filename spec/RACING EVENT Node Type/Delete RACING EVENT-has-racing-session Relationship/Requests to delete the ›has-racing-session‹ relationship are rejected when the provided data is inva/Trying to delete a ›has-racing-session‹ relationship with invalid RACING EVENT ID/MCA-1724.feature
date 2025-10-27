@REQ_MCA-1720
Feature: Delete RACING EVENT-has-racing-session Relationship
  As an API contributor
  I want to be able to disconnect RACING SESSIONS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1723
  Rule: Requests to delete the ›has-racing-session‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1724
    Scenario: Trying to delete a ›has-racing-session‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Monaco" does NOT exist
      And there exists a "RACING SESSION" "DTM Training"
      When the user deletes the "has racing session" relationship between "GP Monaco" and "DTM Training"
      Then the request should be rejected with status code 404
