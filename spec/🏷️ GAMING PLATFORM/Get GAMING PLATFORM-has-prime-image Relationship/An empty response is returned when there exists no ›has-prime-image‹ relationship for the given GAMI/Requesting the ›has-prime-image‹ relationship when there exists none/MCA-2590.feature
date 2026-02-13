@REQ_MCA-2586
Feature: Get GAMING PLATFORM-has-prime-image Relationship

  @RULE_MCA-2589
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given GAMING PLATFORM

    @TEST_MCA-2590 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists NO "has prime image" relationship for "PlayStation 5"
      When the user requests the "has prime image" relationship for "PlayStation 5"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
