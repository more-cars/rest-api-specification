@REQ_MCA-1238
Feature: Create RACING SERIES-has-prime-image Relationship

  @RULE_MCA-1247
  Rule: At the same time, each RACING SERIES can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-1248 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "DTM logo"
      And there exists a "IMAGE" "DTM logo (Alternative)"
      When the user creates a "has prime image" relationship between "DTM" and "DTM logo"
      Then there should exist a "has prime image" relationship between "DTM" and "DTM logo"
      When the user creates a "has prime image" relationship between "DTM" and "DTM logo (Alternative)"
      Then there should exist a "has prime image" relationship between "DTM" and "DTM logo (Alternative)"
      But there should exist NO "has prime image" relationship between "DTM" and "DTM logo"
