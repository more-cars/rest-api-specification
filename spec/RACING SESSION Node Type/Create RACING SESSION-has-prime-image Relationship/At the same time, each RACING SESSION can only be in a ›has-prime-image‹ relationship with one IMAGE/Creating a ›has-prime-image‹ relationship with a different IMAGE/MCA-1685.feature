@REQ_MCA-1675
Feature: Create RACING SESSION-has-prime-image Relationship

  @RULE_MCA-1684
  Rule: At the same time, each RACING SESSION can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-1685 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "starting grid"
      And there exists a "IMAGE" "starting grid (Alternative)"
      When the user creates a "has prime image" relationship between "Grand Prix" and "starting grid"
      Then there should exist a "has prime image" relationship between "Grand Prix" and "starting grid"
      When the user creates a "has prime image" relationship between "Grand Prix" and "starting grid (Alternative)"
      Then there should exist a "has prime image" relationship between "Grand Prix" and "starting grid (Alternative)"
      But there should exist NO "has prime image" relationship between "Grand Prix" and "starting grid"
