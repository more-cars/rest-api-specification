@REQ_MCA-1300
Feature: Delete RACING EVENT-belongs-to-racing-series Relationship
  As an API contributor
  I want to be able to disconnect RACING SERIES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1307
  Rule: Requests to delete the ›belongs-to-racing-series‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1308 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-racing-series‹ relationship
      Given there exists a "RACING EVENT" "DTM Norisring"
      And there exists a "RACING SERIES" "Formula 1"
      And there exists NO "belongs to racing series" relationship between "DTM Norisring" and "Formula 1"
      When the user deletes the "belongs to racing series" relationship between "DTM Norisring" and "Formula 1"
      Then the request should be rejected with status code 404
