@REQ_MCA-2929
Feature: Delete MAGAZINE ISSUE-covers-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2932
  Rule: Requests to delete the ›covers-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2934 @implemented
    Scenario: Trying to delete a ›covers-racing-event‹ relationship with invalid RACING EVENT ID
      Given there exists a "MAGAZINE ISSUE" "F1 Saison Start"
      And "RACING EVENT" "DTM Norisring" does NOT exist
      When the user deletes the "covers racing event" relationship between "F1 Saison Start" and "DTM Norisring"
      Then the request should be rejected with status code 404
