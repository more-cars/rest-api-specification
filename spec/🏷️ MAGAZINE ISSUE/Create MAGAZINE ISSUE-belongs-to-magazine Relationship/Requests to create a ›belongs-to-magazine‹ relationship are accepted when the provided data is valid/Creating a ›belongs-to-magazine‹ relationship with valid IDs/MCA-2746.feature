@REQ_MCA-2744
Feature: Create MAGAZINE ISSUE-belongs-to-magazine Relationship

  @RULE_MCA-2745
  Rule: Requests to create a ›belongs-to-magazine‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2746
    Scenario: Creating a ›belongs-to-magazine‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "MAGAZINE" "Classic Cars"
      When the user creates a "belongs to magazine" relationship between "Sieger-Typen" and "Classic Cars"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
