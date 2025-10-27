@REQ_MCA-1336
Feature: Create RACING EVENT-follows-event Relationship

  @RULE_MCA-1339
  Rule: Requests to create a ›follows-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1341 @implemented
    Scenario: Trying to create a ›follows-event‹ relationship with invalid RACING EVENT ID
      Given there exists a "RACING EVENT" "GP Austria"
      And "RACING EVENT" "GP Monaco" does NOT exist
      When the user creates a "follows event" relationship between "GP Austria" and "GP Monaco"
      Then the request should be rejected with status code 404
