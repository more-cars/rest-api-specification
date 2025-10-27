@REQ_MCA-1605
Feature: Get RACING SESSION-belongs-to-racing-event Relationship

  @RULE_MCA-1608
  Rule: An empty response is returned when there exists no ›belongs-to-racing-event‹ relationship for the given RACING SESSION

    @TEST_MCA-1609
    Scenario: Requesting the ›belongs-to-racing-event‹ relationship when there exists none
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists NO "belongs to racing event" relationship for "Qualifying"
      When the user requests the "belongs to racing event" relationship for "Qualifying"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
