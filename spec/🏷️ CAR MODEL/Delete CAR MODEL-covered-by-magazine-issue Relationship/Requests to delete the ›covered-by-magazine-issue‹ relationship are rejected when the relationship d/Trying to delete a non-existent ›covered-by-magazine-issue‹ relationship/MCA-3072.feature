@REQ_MCA-3064
Feature: Delete CAR MODEL-covered-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-3071
  Rule: Requests to delete the ›covered-by-magazine-issue‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3072
    Scenario: Trying to delete a non-existent ›covered-by-magazine-issue‹ relationship
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "MAGAZINE ISSUE" "BMW Scene 5_2025"
      And there exists NO "covered by magazine issue" relationship between "Golf" and "BMW Scene 5_2025"
      When the user deletes the "covered by magazine issue" relationship between "Golf" and "BMW Scene 5_2025"
      Then the request should be rejected with status code 404
