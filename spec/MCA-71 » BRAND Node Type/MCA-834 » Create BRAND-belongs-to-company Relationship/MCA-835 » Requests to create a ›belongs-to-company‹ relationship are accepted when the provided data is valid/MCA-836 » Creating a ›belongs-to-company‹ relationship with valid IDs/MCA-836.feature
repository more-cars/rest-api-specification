@REQ_MCA-834
Feature: Create BRAND-belongs-to-company Relationship

  @RULE_MCA-835
  Rule: Requests to create a ›belongs-to-company‹ relationship are accepted when the provided data is valid

    @TEST_MCA-836 @implemented
    Scenario: Creating a ›belongs-to-company‹ relationship with valid IDs
      Given there exists a "BRAND" "Bentley"
      And there exists a "COMPANY" "VW AG"
      When the user creates a "belongs to company" relationship between "Bentley" and "VW AG"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
