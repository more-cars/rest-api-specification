@REQ_MCA-1790
Feature: Create SESSION RESULT-has-image Relationship

  @RULE_MCA-1791
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1792
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "podium"
      When the user creates a "has image" relationship between "1st place" and "podium"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
