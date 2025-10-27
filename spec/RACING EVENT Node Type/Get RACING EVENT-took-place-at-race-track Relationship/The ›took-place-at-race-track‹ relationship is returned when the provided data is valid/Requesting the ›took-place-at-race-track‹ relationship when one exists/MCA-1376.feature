@REQ_MCA-1374
Feature: Get RACING EVENT-took-place-at-race-track Relationship

  @RULE_MCA-1375
  Rule: The ›took-place-at-race-track‹ relationship is returned when the provided data is valid

    @TEST_MCA-1376 @implemented
    Scenario: Requesting the ›took-place-at-race-track‹ relationship when one exists
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "took place at race track" relationship "R" for "GP Austria"
      When the user requests the "took place at race track" relationship for "GP Austria"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
