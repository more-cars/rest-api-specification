@REQ_MCA-1444
Feature: Create RACING EVENT-has-prime-image Relationship

  @RULE_MCA-1453
  Rule: At the same time, each RACING EVENT can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-1454 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "IMAGE" "Race Start"
      And there exists a "IMAGE" "Race Start (Alternative)"
      When the user creates a "has prime image" relationship between "GP Monaco" and "Race Start"
      Then there should exist a "has prime image" relationship between "GP Monaco" and "Race Start"
      When the user creates a "has prime image" relationship between "GP Monaco" and "Race Start (Alternative)"
      Then there should exist a "has prime image" relationship between "GP Monaco" and "Race Start (Alternative)"
      But there should exist NO "has prime image" relationship between "GP Monaco" and "Race Start"
