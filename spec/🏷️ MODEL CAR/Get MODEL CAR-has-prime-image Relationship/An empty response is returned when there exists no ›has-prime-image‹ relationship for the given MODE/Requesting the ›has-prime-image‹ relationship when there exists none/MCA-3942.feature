@REQ_MCA-3938
Feature: Get MODEL CAR-has-prime-image Relationship

  @RULE_MCA-3941
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given MODEL CAR

    @TEST_MCA-3942 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists NO "has prime image" relationship for "F40 Scale Model"
      When the user requests the "has prime image" relationship for "F40 Scale Model"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
