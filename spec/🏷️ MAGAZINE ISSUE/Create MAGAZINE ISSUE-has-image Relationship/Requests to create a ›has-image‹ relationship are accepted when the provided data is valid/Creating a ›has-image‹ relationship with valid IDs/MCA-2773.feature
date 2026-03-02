@REQ_MCA-2771
Feature: Create MAGAZINE ISSUE-has-image Relationship

  @RULE_MCA-2772
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2773 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "Cover"
      When the user creates a "has image" relationship between "Sieger-Typen" and "Cover"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
