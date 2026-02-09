@REQ_MCA-1966
Feature: Get LAP TIME-has-prime-image Relationship

  @RULE_MCA-1969
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given LAP TIME

    @TEST_MCA-1970 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "LAP TIME" "fastest lap"
      And there exists NO "has prime image" relationship for "fastest lap"
      When the user requests the "has prime image" relationship for "fastest lap"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
