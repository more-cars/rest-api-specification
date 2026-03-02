@REQ_MCA-2830
Feature: Create MAGAZINE-has-issue Relationship

  @RULE_MCA-2837
  Rule: The same ›has-issue‹ relationship between the same nodes can only be created once

    @TEST_MCA-2838 @implemented
    Scenario: Trying to create the same ›has-issue‹ relationship again
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "MAGAZINE ISSUE" "Best Sportscars 2015"
      And there exists a "has issue" relationship between "Top Gear" and "Best Sportscars 2015"
      When the user creates a "has issue" relationship between "Top Gear" and "Best Sportscars 2015"
      Then the response should return with status code 304
