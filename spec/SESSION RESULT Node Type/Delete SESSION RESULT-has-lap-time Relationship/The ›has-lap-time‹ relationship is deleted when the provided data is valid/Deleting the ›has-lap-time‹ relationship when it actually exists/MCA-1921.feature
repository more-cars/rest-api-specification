@REQ_MCA-1919
Feature: Delete SESSION RESULT-has-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1920
  Rule: The ›has-lap-time‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1921 @implemented
    Scenario: Deleting the ›has-lap-time‹ relationship when it actually exists
      Given there exists a "SESSION RESULT" "Grand Prix"
      And there exists a "LAP TIME" "test lap"
      And there exists a "has lap time" relationship "R" between "Grand Prix" and "test lap"
      When the user deletes the "has lap time" relationship between "Grand Prix" and "test lap"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
