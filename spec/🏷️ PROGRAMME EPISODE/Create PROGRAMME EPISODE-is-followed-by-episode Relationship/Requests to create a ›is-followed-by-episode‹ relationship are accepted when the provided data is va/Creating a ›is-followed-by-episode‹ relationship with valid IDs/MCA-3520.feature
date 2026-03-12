@REQ_MCA-3518
Feature: Create PROGRAMME EPISODE-is-followed-by-episode Relationship

  @RULE_MCA-3519
  Rule: Requests to create a ›is-followed-by-episode‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3520 @implemented
    Scenario: Creating a ›is-followed-by-episode‹ relationship with valid IDs
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "Operation Desert Stumble"
      When the user creates a "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
