@REQ_MCA-877
Feature: Create CAR MODEL-is-successor-of Relationship

  @RULE_MCA-886
  Rule: At the same time, each CAR MODEL can only be in a ›is-successor-of‹ relationship with one PARTNER

    @TEST_MCA-887 @implemented
    Scenario: Creating a ›is-successor-of‹ relationship with a different CAR MODEL
      Given there exists a "CAR MODEL" "Golf IV"
      And there exists a "CAR MODEL" "Golf III"
      And there exists a "CAR MODEL" "Golf III (Alternative)"
      When the user creates a "is successor of" relationship between "Golf IV" and "Golf III"
      Then there should exist a "is successor of" relationship between "Golf IV" and "Golf III"
      When the user creates a "is successor of" relationship between "Golf IV" and "Golf III (Alternative)"
      Then there should exist a "is successor of" relationship between "Golf IV" and "Golf III (Alternative)"
      But there should exist NO "is successor of" relationship between "Golf IV" and "Golf III"
