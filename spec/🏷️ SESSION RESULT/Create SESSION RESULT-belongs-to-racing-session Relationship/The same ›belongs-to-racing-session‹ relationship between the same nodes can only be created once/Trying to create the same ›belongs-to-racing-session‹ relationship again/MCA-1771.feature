@REQ_MCA-1763
Feature: Create SESSION RESULT-belongs-to-racing-session Relationship

  @RULE_MCA-1770
  Rule: The same ›belongs-to-racing-session‹ relationship between the same nodes can only be created once

    @TEST_MCA-1771 @implemented
    Scenario: Trying to create the same ›belongs-to-racing-session‹ relationship again
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "RACING SESSION" "Grand Prix"
      And there exists a "belongs to racing session" relationship between "1st place" and "Grand Prix"
      When the user creates a "belongs to racing session" relationship between "1st place" and "Grand Prix"
      Then the response should return with status code 304
