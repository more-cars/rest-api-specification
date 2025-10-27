@REQ_MCA-1374
Feature: Get RACING EVENT-took-place-at-race-track Relationship

  @RULE_MCA-1377
  Rule: An empty response is returned when there exists no ›took-place-at-race-track‹ relationship for the given RACING EVENT

    @TEST_MCA-1378 @implemented
    Scenario: Requesting the ›took-place-at-race-track‹ relationship when there exists none
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists NO "took place at race track" relationship for "GP Austria"
      When the user requests the "took place at race track" relationship for "GP Austria"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
