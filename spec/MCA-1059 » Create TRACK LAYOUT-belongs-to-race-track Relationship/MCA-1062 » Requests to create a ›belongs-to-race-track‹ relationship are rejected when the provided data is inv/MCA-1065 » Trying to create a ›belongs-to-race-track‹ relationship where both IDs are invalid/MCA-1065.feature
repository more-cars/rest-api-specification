@REQ_MCA-1059
Feature: Create TRACK LAYOUT-belongs-to-race-track Relationship

  @RULE_MCA-1062
  Rule: Requests to create a ›belongs-to-race-track‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1065 @implemented
    Scenario: Trying to create a ›belongs-to-race-track‹ relationship where both IDs are invalid
      Given "TRACK LAYOUT" "Club Circuit" does NOT exist
      And "RACE TRACK" "Silverstone" does NOT exist
      When the user creates a "belongs to race track" relationship between "Club Circuit" and "Silverstone"
      Then the request should be rejected with status code 404
