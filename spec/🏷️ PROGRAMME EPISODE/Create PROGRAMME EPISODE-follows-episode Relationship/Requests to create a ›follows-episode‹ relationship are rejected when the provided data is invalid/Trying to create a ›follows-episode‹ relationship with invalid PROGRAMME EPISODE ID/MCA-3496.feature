@REQ_MCA-3491
Feature: Create PROGRAMME EPISODE-follows-episode Relationship

  @RULE_MCA-3494
  Rule: Requests to create a ›follows-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3496
    Scenario: Trying to create a ›follows-episode‹ relationship with invalid PROGRAMME EPISODE ID
      Given there exists a "PROGRAMME EPISODE" "Blasts from the past"
      And "PROGRAMME EPISODE" "It is a gas, gas, gas" does NOT exist
      When the user creates a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas"
      Then the request should be rejected with status code 404
