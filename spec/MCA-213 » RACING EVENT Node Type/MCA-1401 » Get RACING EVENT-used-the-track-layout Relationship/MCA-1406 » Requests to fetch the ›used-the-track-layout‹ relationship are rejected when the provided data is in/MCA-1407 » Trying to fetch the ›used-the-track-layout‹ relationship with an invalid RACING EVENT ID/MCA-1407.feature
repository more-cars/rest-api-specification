@REQ_MCA-1401
Feature: Get RACING EVENT-used-the-track-layout Relationship

  @RULE_MCA-1406
  Rule: Requests to fetch the ›used-the-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1407 @implemented
    Scenario: Trying to fetch the ›used-the-track-layout‹ relationship with an invalid RACING EVENT ID
      Given "RACING EVENT" "GP Austria" does NOT exist
      When the user requests the "used the track layout" relationship for "GP Austria"
      Then the request should be rejected with status code 404
