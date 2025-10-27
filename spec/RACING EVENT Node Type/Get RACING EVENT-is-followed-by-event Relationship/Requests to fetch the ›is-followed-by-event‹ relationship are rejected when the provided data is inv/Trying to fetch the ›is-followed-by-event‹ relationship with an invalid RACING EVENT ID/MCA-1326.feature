@REQ_MCA-1320
Feature: Get RACING EVENT-is-followed-by-event Relationship

  @RULE_MCA-1325
  Rule: Requests to fetch the ›is-followed-by-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1326 @implemented
    Scenario: Trying to fetch the ›is-followed-by-event‹ relationship with an invalid RACING EVENT ID
      Given "RACING EVENT" "GP Monaco" does NOT exist
      When the user requests the "is followed by event" relationship for "GP Monaco"
      Then the request should be rejected with status code 404
