@REQ_MCA-1537
Feature: Create IMAGE-is-prime-image-of-node Relationship

  @RULE_MCA-1538
  Rule: Requests to create a ›is-prime-image-of-node‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1539 @implemented
    Scenario: Creating a ›is-prime-image-of-node‹ relationship with valid IDs
      Given there exists a "IMAGE" "BMW Logo"
      And there exists a "BRAND" "BMW"
      When the user creates a "is prime image of node" relationship between "BMW Logo" and "BMW"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
