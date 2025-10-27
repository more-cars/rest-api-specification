@REQ_MCA-1300
Feature: Delete RACING EVENT-belongs-to-racing-series Relationship
  As an API contributor
  I want to be able to disconnect RACING SERIES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1303
  Rule: Requests to delete the ›belongs-to-racing-series‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1304 @implemented
    Scenario: Trying to delete a ›belongs-to-racing-series‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "DTM Norisring" does NOT exist
      And there exists a "RACING SERIES" "Formula 1"
      When the user deletes the "belongs to racing series" relationship between "DTM Norisring" and "Formula 1"
      Then the request should be rejected with status code 404
