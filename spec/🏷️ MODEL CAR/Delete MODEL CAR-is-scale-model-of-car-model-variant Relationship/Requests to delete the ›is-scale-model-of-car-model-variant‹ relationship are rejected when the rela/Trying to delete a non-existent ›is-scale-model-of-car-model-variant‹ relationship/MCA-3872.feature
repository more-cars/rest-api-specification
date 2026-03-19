@REQ_MCA-3864
Feature: Delete MODEL CAR-is-scale-model-of-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3871
  Rule: Requests to delete the ›is-scale-model-of-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3872
    Scenario: Trying to delete a non-existent ›is-scale-model-of-car-model-variant‹ relationship
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "CAR MODEL VARIANT" "Trabant 601"
      And there exists NO "is scale model of car model variant" relationship between "F40 Matchbox" and "Trabant 601"
      When the user deletes the "is scale model of car model variant" relationship between "F40 Matchbox" and "Trabant 601"
      Then the request should be rejected with status code 404
