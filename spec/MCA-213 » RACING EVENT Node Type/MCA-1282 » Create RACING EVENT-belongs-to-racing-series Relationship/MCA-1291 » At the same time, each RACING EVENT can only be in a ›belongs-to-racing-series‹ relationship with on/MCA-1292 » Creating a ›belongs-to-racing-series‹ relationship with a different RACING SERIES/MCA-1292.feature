@REQ_MCA-1282
Feature: Create RACING EVENT-belongs-to-racing-series Relationship

  @RULE_MCA-1291
  Rule: At the same time, each RACING EVENT can only be in a ›belongs-to-racing-series‹ relationship with one RACING SERIES

    @TEST_MCA-1292 @implemented
    Scenario: Creating a ›belongs-to-racing-series‹ relationship with a different RACING SERIES
      Given there exists a "RACING EVENT" "Silverstone GP"
      And there exists a "RACING SERIES" "Formula 1"
      And there exists a "RACING SERIES" "Formula 1 (Alternative)"
      When the user creates a "belongs to racing series" relationship between "Silverstone GP" and "Formula 1"
      Then there should exist a "belongs to racing series" relationship between "Silverstone GP" and "Formula 1"
      When the user creates a "belongs to racing series" relationship between "Silverstone GP" and "Formula 1 (Alternative)"
      Then there should exist a "belongs to racing series" relationship between "Silverstone GP" and "Formula 1 (Alternative)"
      But there should exist NO "belongs to racing series" relationship between "Silverstone GP" and "Formula 1"
