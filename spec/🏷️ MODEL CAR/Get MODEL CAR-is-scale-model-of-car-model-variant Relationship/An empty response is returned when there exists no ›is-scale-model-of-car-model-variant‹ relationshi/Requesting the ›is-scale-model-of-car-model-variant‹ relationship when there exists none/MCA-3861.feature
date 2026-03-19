@REQ_MCA-3857
Feature: Get MODEL CAR-is-scale-model-of-car-model-variant Relationship

  @RULE_MCA-3860
  Rule: An empty response is returned when there exists no ›is-scale-model-of-car-model-variant‹ relationship for the given MODEL CAR

    @TEST_MCA-3861
    Scenario: Requesting the ›is-scale-model-of-car-model-variant‹ relationship when there exists none
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists NO "is scale model of car model variant" relationship for "F40 Matchbox"
      When the user requests the "is scale model of car model variant" relationship for "F40 Matchbox"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
