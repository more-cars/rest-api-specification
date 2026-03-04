@REQ_MCA-3046
Feature: Create CAR MODEL-covered-by-magazine-issue Relationship

  @RULE_MCA-3049
  Rule: Requests to create a ›covered-by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3051
    Scenario: Trying to create a ›covered-by-magazine-issue‹ relationship with invalid MAGAZINE ISSUE ID
      Given there exists a "CAR MODEL" "Golf"
      And "MAGAZINE ISSUE" "50 Jahre GTI" does NOT exist
      When the user creates a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI"
      Then the request should be rejected with status code 404
