@REQ_MCA-3064
Feature: Delete CAR MODEL-covered-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-3065
  Rule: The ›covered-by-magazine-issue‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3066 @implemented
    Scenario: Deleting the ›covered-by-magazine-issue‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "MAGAZINE ISSUE" "BMW Scene 5_2025"
      And there exists a "covered by magazine issue" relationship "R" between "Golf" and "BMW Scene 5_2025"
      When the user deletes the "covered by magazine issue" relationship between "Golf" and "BMW Scene 5_2025"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
