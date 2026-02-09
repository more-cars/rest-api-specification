@REQ_MCA-1059
Feature: Create TRACK LAYOUT-belongs-to-race-track Relationship

  @RULE_MCA-1060
  Rule: Requests to create a ›belongs-to-race-track‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1061 @implemented
    Scenario: Creating a ›belongs-to-race-track‹ relationship with valid IDs
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "RACE TRACK" "Silverstone"
      When the user creates a "belongs to race track" relationship between "Club Circuit" and "Silverstone"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
