@REQ_MCA-1498
Feature: Create TRACK LAYOUT-was-used-by-racing-event Relationship

  @RULE_MCA-1501
  Rule: Requests to create a ›was-used-by-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1502 @implemented
    Scenario: Trying to create a ›was-used-by-racing-event‹ relationship with invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Grand Prix Circuit" does NOT exist
      And there exists a "RACING EVENT" "GP Silverstone"
      When the user creates a "was used by racing event" relationship between "Grand Prix Circuit" and "GP Silverstone"
      Then the request should be rejected with status code 404
