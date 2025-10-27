@REQ_MCA-1612
Feature: Delete RACING SESSION-belongs-to-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1615
  Rule: Requests to delete the ›belongs-to-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1616
    Scenario: Trying to delete a ›belongs-to-racing-event‹ relationship with invalid RACING SESSION ID
      Given "RACING SESSION" "Grand Prix" does NOT exist
      And there exists a "RACING EVENT" "DTM Norisring"
      When the user deletes the "belongs to racing event" relationship between "Grand Prix" and "DTM Norisring"
      Then the request should be rejected with status code 404
