@REQ_MCA-2009
Feature: Create TRACK LAYOUT-has-lap-time Relationship

  @RULE_MCA-2010
  Rule: Requests to create a ›has-lap-time‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2011 @implemented
    Scenario: Creating a ›has-lap-time‹ relationship with valid IDs
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "LAP TIME" "fastest lap"
      When the user creates a "has lap time" relationship between "Club Circuit" and "fastest lap"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
