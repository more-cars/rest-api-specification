@REQ_MCA-3491
Feature: Create PROGRAMME EPISODE-follows-episode Relationship

  @RULE_MCA-3494
  Rule: Requests to create a ›follows-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3495 @implemented
    Scenario: Trying to create a ›follows-episode‹ relationship with invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "Blasts from the past" does NOT exist
      And there exists a "PROGRAMME EPISODE" "It is a gas, gas, gas"
      When the user creates a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas"
      Then the request should be rejected with status code 404
