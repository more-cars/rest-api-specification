@REQ_MCA-3491
Feature: Create PROGRAMME EPISODE-follows-episode Relationship

  @RULE_MCA-3500
  Rule: At the same time, each PROGRAMME EPISODE can only be in a ›follows-episode‹ relationship with one PROGRAMME EPISODE

    @TEST_MCA-3501
    Scenario: Creating a ›follows-episode‹ relationship with a different PROGRAMME EPISODE
      Given there exists a "PROGRAMME EPISODE" "Blasts from the past"
      And there exists a "PROGRAMME EPISODE" "It is a gas, gas, gas"
      And there exists a "PROGRAMME EPISODE" "It is a gas, gas, gas (Alternative)"
      When the user creates a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas"
      Then there should exist a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas"
      When the user creates a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas (Alternative)"
      Then there should exist a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas (Alternative)"
      But there should exist NO "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas"
