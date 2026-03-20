@REQ_MCA-3857
Feature: Get MODEL CAR-is-scale-model-of-car-model-variant Relationship

  @RULE_MCA-3862
  Rule: Requests to fetch the ›is-scale-model-of-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3863 @implemented
    Scenario: Trying to fetch the ›is-scale-model-of-car-model-variant‹ relationship with an invalid MODEL CAR ID
      Given "MODEL CAR" "F40 Matchbox" does NOT exist
      When the user requests the "is scale model of car model variant" relationship for "F40 Matchbox"
      Then the request should be rejected with status code 404
