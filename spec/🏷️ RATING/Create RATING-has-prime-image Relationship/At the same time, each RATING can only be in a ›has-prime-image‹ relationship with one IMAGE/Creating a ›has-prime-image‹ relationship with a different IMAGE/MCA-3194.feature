@REQ_MCA-3184
Feature: Create RATING-has-prime-image Relationship

  @RULE_MCA-3193
  Rule: At the same time, each RATING can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-3194 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "Top Rating"
      And there exists a "IMAGE" "Top Rating (Alternative)"
      When the user creates a "has prime image" relationship between "93 Percent" and "Top Rating"
      Then there should exist a "has prime image" relationship between "93 Percent" and "Top Rating"
      When the user creates a "has prime image" relationship between "93 Percent" and "Top Rating (Alternative)"
      Then there should exist a "has prime image" relationship between "93 Percent" and "Top Rating (Alternative)"
      But there should exist NO "has prime image" relationship between "93 Percent" and "Top Rating"
