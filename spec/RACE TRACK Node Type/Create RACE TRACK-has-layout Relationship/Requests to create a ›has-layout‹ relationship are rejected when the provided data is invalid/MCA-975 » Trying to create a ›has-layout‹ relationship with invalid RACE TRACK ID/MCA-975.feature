@REQ_MCA-971
Feature: Create RACE TRACK-has-layout Relationship

  @RULE_MCA-974
  Rule: Requests to create a ›has-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-975 @implemented
    Scenario: Trying to create a ›has-layout‹ relationship with invalid RACE TRACK ID
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      And there exists a "TRACK LAYOUT" "GP Circuit"
      When the user creates a "has layout" relationship between "Hockenheimring" and "GP Circuit"
      Then the request should be rejected with status code 404
