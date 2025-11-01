@REQ_MCA-2177
Feature: Create CAR MODEL VARIANT-has-prime-image Relationship

  @RULE_MCA-2186
  Rule: At the same time, each CAR MODEL VARIANT can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-2187 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "M3 front-left"
      And there exists a "IMAGE" "M3 front-left (Alternative)"
      When the user creates a "has prime image" relationship between "BMW M3" and "M3 front-left"
      Then there should exist a "has prime image" relationship between "BMW M3" and "M3 front-left"
      When the user creates a "has prime image" relationship between "BMW M3" and "M3 front-left (Alternative)"
      Then there should exist a "has prime image" relationship between "BMW M3" and "M3 front-left (Alternative)"
      But there should exist NO "has prime image" relationship between "BMW M3" and "M3 front-left"
