@REQ_MCA-3884
Feature: Get MODEL CAR-made-by-model-car-brand Relationship

  @RULE_MCA-3887
  Rule: An empty response is returned when there exists no ›made-by-model-car-brand‹ relationship for the given MODEL CAR

    @TEST_MCA-3888
    Scenario: Requesting the ›made-by-model-car-brand‹ relationship when there exists none
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists NO "made by model car brand" relationship for "F40 Scale Model"
      When the user requests the "made by model car brand" relationship for "F40 Scale Model"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
