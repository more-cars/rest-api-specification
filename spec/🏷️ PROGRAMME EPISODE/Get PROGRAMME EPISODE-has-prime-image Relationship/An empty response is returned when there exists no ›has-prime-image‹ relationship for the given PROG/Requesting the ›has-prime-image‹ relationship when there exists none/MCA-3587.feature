@REQ_MCA-3583
Feature: Get PROGRAMME EPISODE-has-prime-image Relationship

  @RULE_MCA-3586
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given PROGRAMME EPISODE

    @TEST_MCA-3587
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists NO "has prime image" relationship for "The Holy Trinity"
      When the user requests the "has prime image" relationship for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
