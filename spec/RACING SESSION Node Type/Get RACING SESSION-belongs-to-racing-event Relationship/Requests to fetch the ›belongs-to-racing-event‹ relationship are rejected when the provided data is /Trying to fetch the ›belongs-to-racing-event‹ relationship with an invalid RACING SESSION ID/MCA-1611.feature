@REQ_MCA-1605
Feature: Get RACING SESSION-belongs-to-racing-event Relationship

  @RULE_MCA-1610
  Rule: Requests to fetch the ›belongs-to-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1611
    Scenario: Trying to fetch the ›belongs-to-racing-event‹ relationship with an invalid RACING SESSION ID
      Given "RACING SESSION" "Qualifying" does NOT exist
      When the user requests the "belongs to racing event" relationship for "Qualifying"
      Then the request should be rejected with status code 404
