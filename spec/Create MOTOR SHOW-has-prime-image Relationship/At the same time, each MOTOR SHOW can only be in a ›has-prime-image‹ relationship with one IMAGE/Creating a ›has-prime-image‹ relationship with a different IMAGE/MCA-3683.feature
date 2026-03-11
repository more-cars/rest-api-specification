@REQ_MCA-3673
Feature: Create MOTOR SHOW-has-prime-image Relationship

  @RULE_MCA-3682
  Rule: At the same time, each MOTOR SHOW can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-3683
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "IAA logo"
      And there exists a "IMAGE" "IAA logo (Alternative)"
      When the user creates a "has prime image" relationship between "IAA Frankfurt" and "IAA logo"
      Then there should exist a "has prime image" relationship between "IAA Frankfurt" and "IAA logo"
      When the user creates a "has prime image" relationship between "IAA Frankfurt" and "IAA logo (Alternative)"
      Then there should exist a "has prime image" relationship between "IAA Frankfurt" and "IAA logo (Alternative)"
      But there should exist NO "has prime image" relationship between "IAA Frankfurt" and "IAA logo"
