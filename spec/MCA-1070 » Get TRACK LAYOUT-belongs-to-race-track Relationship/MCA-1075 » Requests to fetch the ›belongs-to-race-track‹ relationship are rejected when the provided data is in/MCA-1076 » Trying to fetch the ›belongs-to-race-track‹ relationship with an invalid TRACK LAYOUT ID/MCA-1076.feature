@REQ_MCA-1070
Feature: Get TRACK LAYOUT-belongs-to-race-track Relationship

  @RULE_MCA-1075
  Rule: Requests to fetch the ›belongs-to-race-track‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1076 @implemented
    Scenario: Trying to fetch the ›belongs-to-race-track‹ relationship with an invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Club Circuit" does NOT exist
      When the user requests the "belongs to race track" relationship for "Club Circuit"
      Then the request should be rejected with status code 404
