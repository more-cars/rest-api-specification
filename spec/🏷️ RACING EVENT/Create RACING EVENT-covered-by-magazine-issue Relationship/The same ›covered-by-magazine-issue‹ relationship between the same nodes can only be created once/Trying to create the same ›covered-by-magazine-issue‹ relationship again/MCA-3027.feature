@REQ_MCA-3019
Feature: Create RACING EVENT-covered-by-magazine-issue Relationship

  @RULE_MCA-3026
  Rule: The same ›covered-by-magazine-issue‹ relationship between the same nodes can only be created once

    @TEST_MCA-3027
    Scenario: Trying to create the same ›covered-by-magazine-issue‹ relationship again
      Given there exists a "RACING EVENT" "F1 GP Australia"
      And there exists a "MAGAZINE ISSUE" "F1 Season Start"
      And there exists a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start"
      When the user creates a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start"
      Then the response should return with status code 304
