@REQ_MCA-1455
Feature: Get RACING EVENT-has-prime-image Relationship

  @RULE_MCA-1458
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given RACING EVENT

    @TEST_MCA-1459 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists NO "has prime image" relationship for "GP Monaco"
      When the user requests the "has prime image" relationship for "GP Monaco"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
