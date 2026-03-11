@REQ_MCA-3491
Feature: Create PROGRAMME EPISODE-follows-episode Relationship

  @RULE_MCA-3498
  Rule: The same ›follows-episode‹ relationship between the same nodes can only be created once

    @TEST_MCA-3499
    Scenario: Trying to create the same ›follows-episode‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "Blasts from the past"
      And there exists a "PROGRAMME EPISODE" "It is a gas, gas, gas"
      And there exists a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas"
      When the user creates a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas"
      Then the response should return with status code 304
