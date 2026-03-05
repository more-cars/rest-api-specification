@REQ_MCA-3046
Feature: Create CAR MODEL-covered-by-magazine-issue Relationship

  @RULE_MCA-3053
  Rule: The same ›covered-by-magazine-issue‹ relationship between the same nodes can only be created once

    @TEST_MCA-3054 @implemented
    Scenario: Trying to create the same ›covered-by-magazine-issue‹ relationship again
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exists a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI"
      When the user creates a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI"
      Then the response should return with status code 304
