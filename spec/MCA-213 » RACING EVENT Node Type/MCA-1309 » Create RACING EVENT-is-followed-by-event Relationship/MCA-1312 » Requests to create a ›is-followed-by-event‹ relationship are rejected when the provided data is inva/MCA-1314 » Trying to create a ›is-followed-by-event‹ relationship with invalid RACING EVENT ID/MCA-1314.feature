@REQ_MCA-1309
Feature: Create RACING EVENT-is-followed-by-event Relationship

  @RULE_MCA-1312
  Rule: Requests to create a ›is-followed-by-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1314 @implemented
    Scenario: Trying to create a ›is-followed-by-event‹ relationship with invalid RACING EVENT ID
      Given there exists a "RACING EVENT" "GP Monaco"
      And "RACING EVENT" "GP Austria" does NOT exist
      When the user creates a "is followed by event" relationship between "GP Monaco" and "GP Austria"
      Then the request should be rejected with status code 404
