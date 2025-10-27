@REQ_MCA-1347
Feature: Get RACING EVENT-follows-event Relationship

  @RULE_MCA-1350
  Rule: An empty response is returned when there exists no ›follows-event‹ relationship for the given RACING EVENT

    @TEST_MCA-1351 @implemented
    Scenario: Requesting the ›follows-event‹ relationship when there exists none
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists NO "follows event" relationship for "GP Austria"
      When the user requests the "follows event" relationship for "GP Austria"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
