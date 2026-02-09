@REQ_MCA-1817
Feature: Create SESSION RESULT-has-prime-image Relationship

  @RULE_MCA-1818
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1819 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "finish line"
      When the user creates a "has prime image" relationship between "1st place" and "finish line"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
