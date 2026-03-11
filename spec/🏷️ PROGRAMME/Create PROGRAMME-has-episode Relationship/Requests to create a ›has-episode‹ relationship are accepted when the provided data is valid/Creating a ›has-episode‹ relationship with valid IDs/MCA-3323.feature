@REQ_MCA-3321
Feature: Create PROGRAMME-has-episode Relationship

  @RULE_MCA-3322
  Rule: Requests to create a ›has-episode‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3323
    Scenario: Creating a ›has-episode‹ relationship with valid IDs
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      When the user creates a "has episode" relationship between "The Grand Tour" and "The Holy Trinity"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
