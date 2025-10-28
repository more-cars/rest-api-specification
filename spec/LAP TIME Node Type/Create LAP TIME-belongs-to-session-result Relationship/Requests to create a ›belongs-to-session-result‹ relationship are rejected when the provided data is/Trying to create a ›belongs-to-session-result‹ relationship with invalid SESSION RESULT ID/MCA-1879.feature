@REQ_MCA-1874
Feature: Create LAP TIME-belongs-to-session-result Relationship

  @RULE_MCA-1877
  Rule: Requests to create a ›belongs-to-session-result‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1879 @implemented
    Scenario: Trying to create a ›belongs-to-session-result‹ relationship with invalid SESSION RESULT ID
      Given there exists a "LAP TIME" "fastest lap"
      And "SESSION RESULT" "Grand Prix" does NOT exist
      When the user creates a "belongs to session result" relationship between "fastest lap" and "Grand Prix"
      Then the request should be rejected with status code 404
