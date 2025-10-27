@REQ_MCA-1347
Feature: Get RACING EVENT-follows-event Relationship

  @RULE_MCA-1352
  Rule: Requests to fetch the ›follows-event‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1353 @implemented
    Scenario: Trying to fetch the ›follows-event‹ relationship with an invalid RACING EVENT ID
      Given "RACING EVENT" "GP Austria" does NOT exist
      When the user requests the "follows event" relationship for "GP Austria"
      Then the request should be rejected with status code 404
