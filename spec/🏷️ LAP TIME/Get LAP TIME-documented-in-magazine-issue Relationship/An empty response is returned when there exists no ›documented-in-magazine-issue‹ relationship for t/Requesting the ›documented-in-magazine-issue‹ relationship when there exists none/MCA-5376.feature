@REQ_MCA-5372
Feature: Get LAP TIME-documented-in-magazine-issue Relationship

  @RULE_MCA-5375
  Rule: An empty response is returned when there exists no ›documented-in-magazine-issue‹ relationship for the given LAP TIME

    @TEST_MCA-5376 @implemented
    Scenario: Requesting the ›documented-in-magazine-issue‹ relationship when there exists none
      Given there exists a "LAP TIME" "fastest lap"
      And there exists NO "documented in magazine issue" relationship for "fastest lap"
      When the user requests the "documented in magazine issue" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      But the response should contain no data
