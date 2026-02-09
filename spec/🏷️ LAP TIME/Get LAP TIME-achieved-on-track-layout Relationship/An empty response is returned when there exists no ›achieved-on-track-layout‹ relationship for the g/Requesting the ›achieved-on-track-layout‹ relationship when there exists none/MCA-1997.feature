@REQ_MCA-1993
Feature: Get LAP TIME-achieved-on-track-layout Relationship

  @RULE_MCA-1996
  Rule: An empty response is returned when there exists no ›achieved-on-track-layout‹ relationship for the given LAP TIME

    @TEST_MCA-1997 @implemented
    Scenario: Requesting the ›achieved-on-track-layout‹ relationship when there exists none
      Given there exists a "LAP TIME" "fastest lap"
      And there exists NO "achieved on track layout" relationship for "fastest lap"
      When the user requests the "achieved on track layout" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
