@REQ_MCA-1320
Feature: Get RACING EVENT-is-followed-by-event Relationship

  @RULE_MCA-1323
  Rule: An empty response is returned when there exists no ›is-followed-by-event‹ relationship for the given RACING EVENT

    @TEST_MCA-1324 @implemented
    Scenario: Requesting the ›is-followed-by-event‹ relationship when there exists none
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists NO "is followed by event" relationship for "GP Monaco"
      When the user requests the "is followed by event" relationship for "GP Monaco"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
