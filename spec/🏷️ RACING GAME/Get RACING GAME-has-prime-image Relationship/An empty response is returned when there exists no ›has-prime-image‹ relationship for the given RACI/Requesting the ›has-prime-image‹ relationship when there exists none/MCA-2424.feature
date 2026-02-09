@REQ_MCA-2420
Feature: Get RACING GAME-has-prime-image Relationship

  @RULE_MCA-2423
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given RACING GAME

    @TEST_MCA-2424
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "RACING GAME" "F1 2025"
      And there exists NO "has prime image" relationship for "F1 2025"
      When the user requests the "has prime image" relationship for "F1 2025"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
