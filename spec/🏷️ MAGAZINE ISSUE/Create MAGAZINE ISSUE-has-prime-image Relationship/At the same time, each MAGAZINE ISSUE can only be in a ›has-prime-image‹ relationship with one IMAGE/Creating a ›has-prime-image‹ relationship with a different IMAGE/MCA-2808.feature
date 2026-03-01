@REQ_MCA-2798
Feature: Create MAGAZINE ISSUE-has-prime-image Relationship

  @RULE_MCA-2807
  Rule: At the same time, each MAGAZINE ISSUE can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-2808
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "Cover"
      And there exists a "IMAGE" "Cover (Alternative)"
      When the user creates a "has prime image" relationship between "Sieger-Typen" and "Cover"
      Then there should exist a "has prime image" relationship between "Sieger-Typen" and "Cover"
      When the user creates a "has prime image" relationship between "Sieger-Typen" and "Cover (Alternative)"
      Then there should exist a "has prime image" relationship between "Sieger-Typen" and "Cover (Alternative)"
      But there should exist NO "has prime image" relationship between "Sieger-Typen" and "Cover"
