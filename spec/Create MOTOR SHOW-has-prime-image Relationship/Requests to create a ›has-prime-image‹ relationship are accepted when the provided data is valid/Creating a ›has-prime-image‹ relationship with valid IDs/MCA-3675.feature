@REQ_MCA-3673
Feature: Create MOTOR SHOW-has-prime-image Relationship

  @RULE_MCA-3674
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3675
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "IAA logo"
      When the user creates a "has prime image" relationship between "IAA Frankfurt" and "IAA logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
