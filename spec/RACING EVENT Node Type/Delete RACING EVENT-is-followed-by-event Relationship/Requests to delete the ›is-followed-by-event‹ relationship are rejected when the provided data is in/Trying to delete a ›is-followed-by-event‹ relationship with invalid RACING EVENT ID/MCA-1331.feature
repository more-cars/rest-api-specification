@REQ_MCA-1327
Feature: Delete RACING EVENT-is-followed-by-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1330
  Rule: Requests to delete the ›is-followed-by-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1331 @implemented
    Scenario: Trying to delete a ›is-followed-by-event‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Monaco" does NOT exist
      And there exists a "RACING EVENT" "DTM Norisring"
      When the user deletes the "is followed by event" relationship between "GP Monaco" and "DTM Norisring"
      Then the request should be rejected with status code 404
