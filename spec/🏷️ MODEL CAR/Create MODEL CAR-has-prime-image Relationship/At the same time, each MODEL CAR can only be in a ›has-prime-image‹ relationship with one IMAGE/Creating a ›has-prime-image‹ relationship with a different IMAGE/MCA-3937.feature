@REQ_MCA-3927
Feature: Create MODEL CAR-has-prime-image Relationship

  @RULE_MCA-3936
  Rule: At the same time, each MODEL CAR can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-3937 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "F40 Matchbox photo"
      And there exists a "IMAGE" "F40 Matchbox photo (Alternative)"
      When the user creates a "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      Then there should exist a "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      When the user creates a "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo (Alternative)"
      Then there should exist a "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo (Alternative)"
      But there should exist NO "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
