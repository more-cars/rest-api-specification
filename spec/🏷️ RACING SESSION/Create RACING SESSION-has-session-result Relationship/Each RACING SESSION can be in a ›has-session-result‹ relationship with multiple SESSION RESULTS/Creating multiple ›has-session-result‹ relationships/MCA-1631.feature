@REQ_MCA-1621
Feature: Create RACING SESSION-has-session-result Relationship

  @RULE_MCA-1630
  Rule: Each RACING SESSION can be in a ›has-session-result‹ relationship with multiple SESSION RESULTS

    @TEST_MCA-1631 @implemented
    Scenario: Creating multiple ›has-session-result‹ relationships
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "SESSION RESULT" "1st place"
      And there exists a "SESSION RESULT" "1st place (Alternative)"
      When the user creates a "has session result" relationship between "Grand Prix" and "1st place"
      And the user creates a "has session result" relationship between "Grand Prix" and "1st place (Alternative)"
      Then there should exist a "has session result" relationship between "Grand Prix" and "1st place"
      And there should exist a "has session result" relationship between "Grand Prix" and "1st place (Alternative)"
