@REQ_MCA-3064
Feature: Delete CAR MODEL-covered-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-3067
  Rule: Requests to delete the ›covered-by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3070
    Scenario: Trying to delete a ›covered-by-magazine-issue‹ relationship where both IDs are invalid
      Given "CAR MODEL" "Golf" does NOT exist
      And "MAGAZINE ISSUE" "BMW Scene 5_2025" does NOT exist
      When the user deletes the "covered by magazine issue" relationship between "Golf" and "BMW Scene 5_2025"
      Then the request should be rejected with status code 404
