@REQ_MCA-821
Feature: Create CAR MODEL-has-successor Relationship

  @RULE_MCA-830
  Rule: At the same time, each CAR MODEL can only be in a ›has-successor‹ relationship with one CAR MODEL

    @TEST_MCA-831 @deactivated @implemented
    Scenario: Creating a ›has-successor‹ relationship with a different CAR MODEL
      Given there exists a "CAR MODEL" "Countach"
      And there exists a "CAR MODEL" "Diablo"
      And there exists a "CAR MODEL" "Diablo (Alternative)"
      When the user creates a "has successor" relationship between "Countach" and "Diablo"
      Then there should exist a "has successor" relationship between "Countach" and "Diablo"
      When the user creates a "has successor" relationship between "Countach" and "Diablo (Alternative)"
      Then there should exist a "has successor" relationship between "Countach" and "Diablo (Alternative)"
      But there should exist NO "has successor" relationship between "Countach" and "Diablo"
