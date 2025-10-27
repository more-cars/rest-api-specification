@REQ_MCA-1774
Feature: Get SESSION RESULT-belongs-to-racing-session Relationship

  @RULE_MCA-1777
  Rule: An empty response is returned when there exists no ›belongs-to-racing-session‹ relationship for the given SESSION RESULT

    @TEST_MCA-1778
    Scenario: Requesting the ›belongs-to-racing-session‹ relationship when there exists none
      Given there exists a "SESSION RESULT" "1st place"
      And there exists NO "belongs to racing session" relationship for "1st place"
      When the user requests the "belongs to racing session" relationship for "1st place"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
