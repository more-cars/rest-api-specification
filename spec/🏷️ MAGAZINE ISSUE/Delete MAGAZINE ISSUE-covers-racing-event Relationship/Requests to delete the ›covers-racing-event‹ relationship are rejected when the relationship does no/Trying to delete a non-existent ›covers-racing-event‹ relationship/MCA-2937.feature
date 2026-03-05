@REQ_MCA-2929
Feature: Delete MAGAZINE ISSUE-covers-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2936
  Rule: Requests to delete the ›covers-racing-event‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2937 @implemented
    Scenario: Trying to delete a non-existent ›covers-racing-event‹ relationship
      Given there exists a "MAGAZINE ISSUE" "F1 Saison Start"
      And there exists a "RACING EVENT" "DTM Norisring"
      And there exists NO "covers racing event" relationship between "F1 Saison Start" and "DTM Norisring"
      When the user deletes the "covers racing event" relationship between "F1 Saison Start" and "DTM Norisring"
      Then the request should be rejected with status code 404
