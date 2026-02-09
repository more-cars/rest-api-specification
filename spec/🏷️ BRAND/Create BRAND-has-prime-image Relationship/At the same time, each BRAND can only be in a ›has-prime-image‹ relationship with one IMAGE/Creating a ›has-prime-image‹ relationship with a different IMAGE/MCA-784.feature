@REQ_MCA-774
Feature: Create BRAND-has-prime-image Relationship

  @RULE_MCA-783
  Rule: At the same time, each BRAND can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-784 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "BRAND" "Bugatti"
      And there exists a "IMAGE" "logo"
      And there exists a "IMAGE" "logo (Alternative)"
      When the user creates a "has prime image" relationship between "Bugatti" and "logo"
      Then there should exist a "has prime image" relationship between "Bugatti" and "logo"
      When the user creates a "has prime image" relationship between "Bugatti" and "logo (Alternative)"
      Then there should exist a "has prime image" relationship between "Bugatti" and "logo (Alternative)"
      But there should exist NO "has prime image" relationship between "Bugatti" and "logo"
