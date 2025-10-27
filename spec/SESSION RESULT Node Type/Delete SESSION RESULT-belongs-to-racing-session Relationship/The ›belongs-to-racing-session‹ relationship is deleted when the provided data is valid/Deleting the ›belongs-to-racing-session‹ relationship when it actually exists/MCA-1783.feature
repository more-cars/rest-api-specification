@REQ_MCA-1781
Feature: Delete SESSION RESULT-belongs-to-racing-session Relationship
  As an API contributor
  I want to be able to disconnect RACING SESSIONS from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1782
  Rule: The ›belongs-to-racing-session‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1783
    Scenario: Deleting the ›belongs-to-racing-session‹ relationship when it actually exists
      Given there exists a "SESSION RESULT" "999th place"
      And there exists a "RACING SESSION" "Grand Prix"
      And there exists a "belongs to racing session" relationship "R" between "999th place" and "Grand Prix"
      When the user deletes the "belongs to racing session" relationship between "999th place" and "Grand Prix"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
