@REQ_MCA-3366
Feature: Create PROGRAMME-has-prime-image Relationship

  @RULE_MCA-3367
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3368 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "IMAGE" "TGT logo"
      When the user creates a "has prime image" relationship between "The Grand Tour" and "TGT logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
