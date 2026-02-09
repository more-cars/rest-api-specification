@REQ_MCA-1374
Feature: Get RACING EVENT-took-place-at-race-track Relationship

  @RULE_MCA-1379
  Rule: Requests to fetch the ›took-place-at-race-track‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1380 @implemented
    Scenario: Trying to fetch the ›took-place-at-race-track‹ relationship with an invalid RACING EVENT ID
      Given "RACING EVENT" "GP Austria" does NOT exist
      When the user requests the "took place at race track" relationship for "GP Austria"
      Then the request should be rejected with status code 404
