@REQ_MCA-3727
Feature: Create CAR MODEL-covered-by-programme-episode Relationship

  @RULE_MCA-3728
  Rule: Requests to create a ›covered-by-programme-episode‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3729 @implemented
    Scenario: Creating a ›covered-by-programme-episode‹ relationship with valid IDs
      Given there exists a "CAR MODEL" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user creates a "covered by programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
