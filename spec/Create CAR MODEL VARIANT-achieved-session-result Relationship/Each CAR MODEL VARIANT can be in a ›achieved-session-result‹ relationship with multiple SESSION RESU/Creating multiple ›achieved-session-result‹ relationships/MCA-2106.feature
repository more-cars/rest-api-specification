@REQ_MCA-2096
Feature: Create CAR MODEL VARIANT-achieved-session-result Relationship

  @RULE_MCA-2105
  Rule: Each CAR MODEL VARIANT can be in a ›achieved-session-result‹ relationship with multiple SESSION RESULTS

    @TEST_MCA-2106 @implemented
    Scenario: Creating multiple ›achieved-session-result‹ relationships
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "SESSION RESULT" "1st place"
      And there exists a "SESSION RESULT" "1st place (Alternative)"
      When the user creates a "achieved session result" relationship between "BMW M3 GTR" and "1st place"
      And the user creates a "achieved session result" relationship between "BMW M3 GTR" and "1st place (Alternative)"
      Then there should exist a "achieved session result" relationship between "BMW M3 GTR" and "1st place"
      And there should exist a "achieved session result" relationship between "BMW M3 GTR" and "1st place (Alternative)"
