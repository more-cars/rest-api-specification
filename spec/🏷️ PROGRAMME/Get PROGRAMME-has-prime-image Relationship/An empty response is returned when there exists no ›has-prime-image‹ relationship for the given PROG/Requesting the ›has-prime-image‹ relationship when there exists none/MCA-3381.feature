@REQ_MCA-3377
Feature: Get PROGRAMME-has-prime-image Relationship

  @RULE_MCA-3380
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given PROGRAMME

    @TEST_MCA-3381
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists NO "has prime image" relationship for "The Grand Tour"
      When the user requests the "has prime image" relationship for "The Grand Tour"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
