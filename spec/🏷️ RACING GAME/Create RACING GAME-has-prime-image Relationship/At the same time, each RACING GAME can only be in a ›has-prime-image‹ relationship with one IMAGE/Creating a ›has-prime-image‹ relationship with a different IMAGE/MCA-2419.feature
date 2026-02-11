@REQ_MCA-2409
Feature: Create RACING GAME-has-prime-image Relationship

  @RULE_MCA-2418
  Rule: At the same time, each RACING GAME can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-2419 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "dvd cover"
      And there exists a "IMAGE" "dvd cover (Alternative)"
      When the user creates a "has prime image" relationship between "F1 2025" and "dvd cover"
      Then there should exist a "has prime image" relationship between "F1 2025" and "dvd cover"
      When the user creates a "has prime image" relationship between "F1 2025" and "dvd cover (Alternative)"
      Then there should exist a "has prime image" relationship between "F1 2025" and "dvd cover (Alternative)"
      But there should exist NO "has prime image" relationship between "F1 2025" and "dvd cover"
