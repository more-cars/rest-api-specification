@REQ_MCA-2575
Feature: Create GAMING PLATFORM-has-prime-image Relationship

  @RULE_MCA-2584
  Rule: At the same time, each GAMING PLATFORM can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-2585 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "PS5 logo"
      And there exists a "IMAGE" "PS5 logo (Alternative)"
      When the user creates a "has prime image" relationship between "PlayStation 5" and "PS5 logo"
      Then there should exist a "has prime image" relationship between "PlayStation 5" and "PS5 logo"
      When the user creates a "has prime image" relationship between "PlayStation 5" and "PS5 logo (Alternative)"
      Then there should exist a "has prime image" relationship between "PlayStation 5" and "PS5 logo (Alternative)"
      But there should exist NO "has prime image" relationship between "PlayStation 5" and "PS5 logo"
