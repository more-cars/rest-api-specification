@REQ_MCA-3646
Feature: Create MOTOR SHOW-has-image Relationship

  @RULE_MCA-3647
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-3648
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "BMW Stand"
      When the user creates a "has image" relationship between "IAA Frankfurt" and "BMW Stand"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
