@REQ_MCA-1594
Feature: Create RACING SESSION-belongs-to-racing-event Relationship

  @RULE_MCA-1597
  Rule: Requests to create a ›belongs-to-racing-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1598 @implemented
    Scenario: Trying to create a ›belongs-to-racing-event‹ relationship with invalid RACING SESSION ID
      Given "RACING SESSION" "Qualifying" does NOT exist
      And there exists a "RACING EVENT" "GP Monaco"
      When the user creates a "belongs to racing event" relationship between "Qualifying" and "GP Monaco"
      Then the request should be rejected with status code 404
