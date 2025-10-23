@REQ_MCA-971
Feature: Create RACE TRACK-has-layout Relationship

  @RULE_MCA-972
  Rule: Requests to create a ›has-layout‹ relationship are accepted when the provided data is valid

    @TEST_MCA-973 @implemented
    Scenario: Creating a ›has-layout‹ relationship with valid IDs
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "TRACK LAYOUT" "GP Circuit"
      When the user creates a "has layout" relationship between "Hockenheimring" and "GP Circuit"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
