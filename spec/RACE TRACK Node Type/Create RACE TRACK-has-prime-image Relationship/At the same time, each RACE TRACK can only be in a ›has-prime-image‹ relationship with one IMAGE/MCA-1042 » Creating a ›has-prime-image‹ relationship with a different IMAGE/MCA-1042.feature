@REQ_MCA-1032
Feature: Create RACE TRACK-has-prime-image Relationship

  @RULE_MCA-1041
  Rule: At the same time, each RACE TRACK can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-1042 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "first-corner"
      And there exists a "IMAGE" "first-corner (Alternative)"
      When the user creates a "has prime image" relationship between "Hockenheimring" and "first-corner"
      Then there should exist a "has prime image" relationship between "Hockenheimring" and "first-corner"
      When the user creates a "has prime image" relationship between "Hockenheimring" and "first-corner (Alternative)"
      Then there should exist a "has prime image" relationship between "Hockenheimring" and "first-corner (Alternative)"
      But there should exist NO "has prime image" relationship between "Hockenheimring" and "first-corner"
