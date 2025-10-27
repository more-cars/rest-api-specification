@REQ_MCA-1828
Feature: Get SESSION RESULT-has-prime-image Relationship

  @RULE_MCA-1831
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given SESSION RESULT

    @TEST_MCA-1832
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "SESSION RESULT" "1st place"
      And there exists NO "has prime image" relationship for "1st place"
      When the user requests the "has prime image" relationship for "1st place"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
