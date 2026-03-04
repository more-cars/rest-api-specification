@REQ_MCA-2911
Feature: Create MAGAZINE ISSUE-covers-racing-event Relationship

  @RULE_MCA-2914
  Rule: Requests to create a ›covers-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2917
    Scenario: Trying to create a ›covers-racing-event‹ relationship where both IDs are invalid
      Given "MAGAZINE ISSUE" "F1 Saison Start" does NOT exist
      And "RACING EVENT" "F1 GP Australia 2026" does NOT exist
      When the user creates a "covers racing event" relationship between "F1 Saison Start" and "F1 GP Australia 2026"
      Then the request should be rejected with status code 404
