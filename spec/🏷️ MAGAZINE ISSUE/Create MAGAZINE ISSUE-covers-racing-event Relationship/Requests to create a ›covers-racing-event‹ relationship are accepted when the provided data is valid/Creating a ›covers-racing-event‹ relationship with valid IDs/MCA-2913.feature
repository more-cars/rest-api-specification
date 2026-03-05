@REQ_MCA-2911
Feature: Create MAGAZINE ISSUE-covers-racing-event Relationship

  @RULE_MCA-2912
  Rule: Requests to create a ›covers-racing-event‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2913 @implemented
    Scenario: Creating a ›covers-racing-event‹ relationship with valid IDs
      Given there exists a "MAGAZINE ISSUE" "F1 Saison Start"
      And there exists a "RACING EVENT" "F1 GP Australia 2026"
      When the user creates a "covers racing event" relationship between "F1 Saison Start" and "F1 GP Australia 2026"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
