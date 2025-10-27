@REQ_MCA-1955
Feature: Create LAP TIME-has-prime-image Relationship

  @RULE_MCA-1964
  Rule: At the same time, each LAP TIME can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-1965
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "IMAGE" "track record"
      And there exists a "IMAGE" "track record (Alternative)"
      When the user creates a "has prime image" relationship between "fastest lap" and "track record"
      Then there should exist a "has prime image" relationship between "fastest lap" and "track record"
      When the user creates a "has prime image" relationship between "fastest lap" and "track record (Alternative)"
      Then there should exist a "has prime image" relationship between "fastest lap" and "track record (Alternative)"
      But there should exist NO "has prime image" relationship between "fastest lap" and "track record"
