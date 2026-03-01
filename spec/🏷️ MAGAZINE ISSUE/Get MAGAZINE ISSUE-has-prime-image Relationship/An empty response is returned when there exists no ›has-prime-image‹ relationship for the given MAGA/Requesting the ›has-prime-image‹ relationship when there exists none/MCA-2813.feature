@REQ_MCA-2809
Feature: Get MAGAZINE ISSUE-has-prime-image Relationship

  @RULE_MCA-2812
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given MAGAZINE ISSUE

    @TEST_MCA-2813
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists NO "has prime image" relationship for "Sieger-Typen"
      When the user requests the "has prime image" relationship for "Sieger-Typen"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
