@REQ_MCA-4025
Feature: Create MODEL CAR BRAND-has-prime-image Relationship

  @RULE_MCA-4034
  Rule: At the same time, each MODEL CAR BRAND can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-4035
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Hot Wheels logo"
      And there exists a "IMAGE" "Hot Wheels logo (Alternative)"
      When the user creates a "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo"
      Then there should exist a "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo"
      When the user creates a "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo (Alternative)"
      Then there should exist a "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo (Alternative)"
      But there should exist NO "has prime image" relationship between "Hot Wheels" and "Hot Wheels logo"
