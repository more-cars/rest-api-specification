@REQ_MCA-1817
Feature: Create SESSION RESULT-has-prime-image Relationship

  @RULE_MCA-1826
  Rule: At the same time, each SESSION RESULT can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-1827 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "finish line"
      And there exists a "IMAGE" "finish line (Alternative)"
      When the user creates a "has prime image" relationship between "1st place" and "finish line"
      Then there should exist a "has prime image" relationship between "1st place" and "finish line"
      When the user creates a "has prime image" relationship between "1st place" and "finish line (Alternative)"
      Then there should exist a "has prime image" relationship between "1st place" and "finish line (Alternative)"
      But there should exist NO "has prime image" relationship between "1st place" and "finish line"
