@REQ_MCA-3857
Feature: Get MODEL CAR-is-scale-model-of-car-model-variant Relationship

  @RULE_MCA-3858
  Rule: The ›is-scale-model-of-car-model-variant‹ relationship is returned when the provided data is valid

    @TEST_MCA-3859
    Scenario: Requesting the ›is-scale-model-of-car-model-variant‹ relationship when one exists
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "is scale model of car model variant" relationship "R" for "F40 Matchbox"
      When the user requests the "is scale model of car model variant" relationship for "F40 Matchbox"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
