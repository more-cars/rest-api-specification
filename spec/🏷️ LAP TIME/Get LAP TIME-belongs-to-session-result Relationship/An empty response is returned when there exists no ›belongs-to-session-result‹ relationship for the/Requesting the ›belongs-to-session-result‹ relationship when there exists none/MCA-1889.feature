@REQ_MCA-1885
Feature: Get LAP TIME-belongs-to-session-result Relationship

  @RULE_MCA-1888
  Rule: An empty response is returned when there exists no ›belongs-to-session-result‹ relationship for the given LAP TIME

    @TEST_MCA-1889 @implemented
    Scenario: Requesting the ›belongs-to-session-result‹ relationship when there exists none
      Given there exists a "LAP TIME" "fastest lap"
      And there exists NO "belongs to session result" relationship for "fastest lap"
      When the user requests the "belongs to session result" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
