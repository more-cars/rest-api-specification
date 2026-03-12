@REQ_MCA-3410
Feature: Create PROGRAMME EPISODE-belongs-to-programme Relationship

  @RULE_MCA-3411
  Rule: Requests to create a ›belongs-to-programme‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3412 @implemented
    Scenario: Creating a ›belongs-to-programme‹ relationship with valid IDs
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME" "The Grand Tour"
      When the user creates a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
