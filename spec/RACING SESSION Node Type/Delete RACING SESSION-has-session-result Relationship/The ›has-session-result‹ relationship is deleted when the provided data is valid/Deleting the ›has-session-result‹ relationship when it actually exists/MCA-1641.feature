@REQ_MCA-1639
Feature: Delete RACING SESSION-has-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1640
  Rule: The ›has-session-result‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1641
    Scenario: Deleting the ›has-session-result‹ relationship when it actually exists
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "SESSION RESULT" "9999th place"
      And there exists a "has session result" relationship "R" between "Grand Prix" and "9999th place"
      When the user deletes the "has session result" relationship between "Grand Prix" and "9999th place"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
