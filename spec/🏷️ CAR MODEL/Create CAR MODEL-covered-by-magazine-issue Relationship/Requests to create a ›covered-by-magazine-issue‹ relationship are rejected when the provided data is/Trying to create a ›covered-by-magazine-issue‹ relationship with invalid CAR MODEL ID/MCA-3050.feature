@REQ_MCA-3046
Feature: Create CAR MODEL-covered-by-magazine-issue Relationship

  @RULE_MCA-3049
  Rule: Requests to create a ›covered-by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3050 @implemented
    Scenario: Trying to create a ›covered-by-magazine-issue‹ relationship with invalid CAR MODEL ID
      Given "CAR MODEL" "Golf" does NOT exist
      And there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      When the user creates a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI"
      Then the request should be rejected with status code 404
