@REQ_MCA-2096
Feature: Create CAR MODEL VARIANT-achieved-session-result Relationship

  @RULE_MCA-2097
  Rule: Requests to create a ›achieved-session-result‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2098 @implemented
    Scenario: Creating a ›achieved-session-result‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "SESSION RESULT" "1st place"
      When the user creates a "achieved session result" relationship between "BMW M3 GTR" and "1st place"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
