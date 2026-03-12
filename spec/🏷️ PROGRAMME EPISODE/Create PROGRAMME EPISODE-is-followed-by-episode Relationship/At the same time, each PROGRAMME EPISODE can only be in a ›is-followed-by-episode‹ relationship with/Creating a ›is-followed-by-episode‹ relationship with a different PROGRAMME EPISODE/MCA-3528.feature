@REQ_MCA-3518
Feature: Create PROGRAMME EPISODE-is-followed-by-episode Relationship

  @RULE_MCA-3527
  Rule: At the same time, each PROGRAMME EPISODE can only be in a ›is-followed-by-episode‹ relationship with one PROGRAMME EPISODE

    @TEST_MCA-3528 @implemented
    Scenario: Creating a ›is-followed-by-episode‹ relationship with a different PROGRAMME EPISODE
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "Operation Desert Stumble"
      And there exists a "PROGRAMME EPISODE" "Operation Desert Stumble (Alternative)"
      When the user creates a "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble"
      Then there should exist a "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble"
      When the user creates a "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble (Alternative)"
      Then there should exist a "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble (Alternative)"
      But there should exist NO "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble"
