@REQ_MCA-1982
Feature: Create LAP TIME-achieved-on-track-layout Relationship

  @RULE_MCA-1983
  Rule: Requests to create a ›achieved-on-track-layout‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1984 @implemented
    Scenario: Creating a ›achieved-on-track-layout‹ relationship with valid IDs
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "TRACK LAYOUT" "Club Circuit"
      When the user creates a "achieved on track layout" relationship between "fastest lap" and "Club Circuit"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
