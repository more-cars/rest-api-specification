@REQ_MCA-1892
Feature: Delete LAP TIME-belongs-to-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1893
  Rule: The ›belongs-to-session-result‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1894
    Scenario: Deleting the ›belongs-to-session-result‹ relationship when it actually exists
      Given there exists a "LAP TIME" "test lap"
      And there exists a "SESSION RESULT" "Grand Prix"
      And there exists a "belongs to session result" relationship "R" between "test lap" and "Grand Prix"
      When the user deletes the "belongs to session result" relationship between "test lap" and "Grand Prix"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
