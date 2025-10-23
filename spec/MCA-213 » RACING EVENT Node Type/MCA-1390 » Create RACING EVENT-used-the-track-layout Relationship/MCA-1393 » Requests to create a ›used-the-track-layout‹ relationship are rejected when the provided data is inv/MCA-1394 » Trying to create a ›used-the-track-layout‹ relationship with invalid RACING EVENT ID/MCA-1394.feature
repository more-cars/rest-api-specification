@REQ_MCA-1390
Feature: Create RACING EVENT-used-the-track-layout Relationship

  @RULE_MCA-1393
  Rule: Requests to create a ›used-the-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1394 @implemented
    Scenario: Trying to create a ›used-the-track-layout‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Austria" does NOT exist
      And there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      When the user creates a "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit"
      Then the request should be rejected with status code 404
