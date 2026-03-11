@REQ_MCA-3491
Feature: Create PROGRAMME EPISODE-follows-episode Relationship

  @RULE_MCA-3492
  Rule: Requests to create a ›follows-episode‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3493
    Scenario: Creating a ›follows-episode‹ relationship with valid IDs
      Given there exists a "PROGRAMME EPISODE" "Blasts from the past"
      And there exists a "PROGRAMME EPISODE" "It is a gas, gas, gas"
      When the user creates a "follows episode" relationship between "Blasts from the past" and "It is a gas, gas, gas"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
