@REQ_MCA-4239
Feature: Create VIDEO-belongs-to-node Relationship

  @RULE_MCA-4240
  Rule: Requests to create a ›belongs-to-node‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4241
    Scenario: Creating a ›belongs-to-node‹ relationship with valid IDs
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "NODE" "McLaren P1"
      When the user creates a "belongs to node" relationship between "P1 vs F40" and "McLaren P1"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
