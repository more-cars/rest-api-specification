@REQ_MCA-1912
Feature: Get all SESSION RESULT-has-lap-time Relationships

  @RULE_MCA-1917
  Rule: A request to fetch all ›has-lap-time‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1918 @implemented
    Scenario: Trying to fetch the ›has-lap-time‹ relationships with an invalid SESSION RESULT ID
      Given "SESSION RESULT" "Grand Prix" does NOT exist
      When the user requests all "has lap time" relationships for "Grand Prix"
      Then the request should be rejected with status code 404
