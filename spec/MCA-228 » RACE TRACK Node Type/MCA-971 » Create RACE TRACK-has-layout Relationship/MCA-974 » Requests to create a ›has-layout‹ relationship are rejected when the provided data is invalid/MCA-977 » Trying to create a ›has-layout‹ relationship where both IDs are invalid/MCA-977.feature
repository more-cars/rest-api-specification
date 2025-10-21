@REQ_MCA-971
Feature: Create RACE TRACK-has-layout Relationship

  @RULE_MCA-974
  Rule: Requests to create a ›has-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-977 @implemented
    Scenario: Trying to create a ›has-layout‹ relationship where both IDs are invalid
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      And "TRACK LAYOUT" "GP Circuit" does NOT exist
      When the user creates a "has layout" relationship between "Hockenheimring" and "GP Circuit"
      Then the request should be rejected with status code 404
