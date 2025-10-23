@REQ_MCA-1249
Feature: Get RACING SERIES-has-prime-image Relationship

  @RULE_MCA-1252
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given RACING SERIES

    @TEST_MCA-1253 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "RACING SERIES" "BTCC"
      And there exists NO "has prime image" relationship for "BTCC"
      When the user requests the "has prime image" relationship for "BTCC"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
