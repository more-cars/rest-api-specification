@REQ_MCA-1336
Feature: Create RACING EVENT-follows-event Relationship

  @RULE_MCA-1339
  Rule: Requests to create a ›follows-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1340 @implemented
    Scenario: Trying to create a ›follows-event‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Austria" does NOT exist
      And there exists a "RACING EVENT" "GP Monaco"
      When the user creates a "follows event" relationship between "GP Austria" and "GP Monaco"
      Then the request should be rejected with status code 404
