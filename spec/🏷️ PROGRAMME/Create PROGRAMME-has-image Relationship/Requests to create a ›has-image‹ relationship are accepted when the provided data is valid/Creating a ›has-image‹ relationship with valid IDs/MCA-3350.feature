@REQ_MCA-3348
Feature: Create PROGRAMME-has-image Relationship

  @RULE_MCA-3349
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3350
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "IMAGE" "TGT logo"
      When the user creates a "has image" relationship between "The Grand Tour" and "TGT logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
