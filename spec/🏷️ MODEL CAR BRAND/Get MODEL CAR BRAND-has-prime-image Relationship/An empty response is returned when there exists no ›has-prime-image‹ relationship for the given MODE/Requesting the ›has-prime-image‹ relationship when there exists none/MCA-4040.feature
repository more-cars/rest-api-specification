@REQ_MCA-4036
Feature: Get MODEL CAR BRAND-has-prime-image Relationship

  @RULE_MCA-4039
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given MODEL CAR BRAND

    @TEST_MCA-4040 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists NO "has prime image" relationship for "Hot Wheels"
      When the user requests the "has prime image" relationship for "Hot Wheels"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
