@REQ_MCA-2686
Feature: Create MAGAZINE-has-prime-image Relationship

  @RULE_MCA-2695
  Rule: At the same time, each MAGAZINE can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-2696
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "cover"
      And there exists a "IMAGE" "cover (Alternative)"
      When the user creates a "has prime image" relationship between "Top Gear" and "cover"
      Then there should exist a "has prime image" relationship between "Top Gear" and "cover"
      When the user creates a "has prime image" relationship between "Top Gear" and "cover (Alternative)"
      Then there should exist a "has prime image" relationship between "Top Gear" and "cover (Alternative)"
      But there should exist NO "has prime image" relationship between "Top Gear" and "cover"
