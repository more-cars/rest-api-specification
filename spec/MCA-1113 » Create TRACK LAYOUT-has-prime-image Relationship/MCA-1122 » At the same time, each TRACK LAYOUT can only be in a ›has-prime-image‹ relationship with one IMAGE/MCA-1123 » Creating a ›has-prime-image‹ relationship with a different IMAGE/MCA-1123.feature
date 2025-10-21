@REQ_MCA-1113
Feature: Create TRACK LAYOUT-has-prime-image Relationship

  @RULE_MCA-1122
  Rule: At the same time, each TRACK LAYOUT can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-1123 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "latest circuit map"
      And there exists a "IMAGE" "latest circuit map (Alternative)"
      When the user creates a "has prime image" relationship between "GP Circuit" and "latest circuit map"
      Then there should exist a "has prime image" relationship between "GP Circuit" and "latest circuit map"
      When the user creates a "has prime image" relationship between "GP Circuit" and "latest circuit map (Alternative)"
      Then there should exist a "has prime image" relationship between "GP Circuit" and "latest circuit map (Alternative)"
      But there should exist NO "has prime image" relationship between "GP Circuit" and "latest circuit map"
