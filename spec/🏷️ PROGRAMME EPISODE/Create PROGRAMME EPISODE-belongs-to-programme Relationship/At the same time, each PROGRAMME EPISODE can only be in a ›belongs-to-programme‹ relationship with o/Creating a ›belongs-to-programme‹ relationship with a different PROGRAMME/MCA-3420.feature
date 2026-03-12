@REQ_MCA-3410
Feature: Create PROGRAMME EPISODE-belongs-to-programme Relationship

  @RULE_MCA-3419
  Rule: At the same time, each PROGRAMME EPISODE can only be in a ›belongs-to-programme‹ relationship with one PROGRAMME

    @TEST_MCA-3420 @implemented
    Scenario: Creating a ›belongs-to-programme‹ relationship with a different PROGRAMME
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "PROGRAMME" "The Grand Tour (Alternative)"
      When the user creates a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour"
      Then there should exist a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour"
      When the user creates a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour (Alternative)"
      Then there should exist a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour (Alternative)"
      But there should exist NO "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour"
