@REQ_MCA-1354
Feature: Delete RACING EVENT-follows-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1357
  Rule: Requests to delete the ›follows-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1358 @implemented
    Scenario: Trying to delete a ›follows-event‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Austria" does NOT exist
      And there exists a "RACING EVENT" "DTM Norisring"
      When the user deletes the "follows event" relationship between "GP Austria" and "DTM Norisring"
      Then the request should be rejected with status code 404
