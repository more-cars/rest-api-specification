@REQ_MCA-2929
Feature: Delete MAGAZINE ISSUE-covers-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2930
  Rule: The ›covers-racing-event‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2931
    Scenario: Deleting the ›covers-racing-event‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "F1 Saison Start"
      And there exists a "RACING EVENT" "DTM Norisring"
      And there exists a "covers racing event" relationship "R" between "F1 Saison Start" and "DTM Norisring"
      When the user deletes the "covers racing event" relationship between "F1 Saison Start" and "DTM Norisring"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
