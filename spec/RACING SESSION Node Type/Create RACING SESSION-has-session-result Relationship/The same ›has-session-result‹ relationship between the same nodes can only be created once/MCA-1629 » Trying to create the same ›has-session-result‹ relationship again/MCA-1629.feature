@REQ_MCA-1621
Feature: Create RACING SESSION-has-session-result Relationship

  @RULE_MCA-1628
  Rule: The same ›has-session-result‹ relationship between the same nodes can only be created once

    @TEST_MCA-1629
    Scenario: Trying to create the same ›has-session-result‹ relationship again
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "SESSION RESULT" "1st place"
      And there exists a "has session result" relationship between "Grand Prix" and "1st place"
      When the user creates a "has session result" relationship between "Grand Prix" and "1st place"
      Then the response should return with status code 304
