@REQ_MCA-2346
Feature: Delete RACING GAME-features-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2353
  Rule: Requests to delete the ›features-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2354 @implemented
    Scenario: Trying to delete a non-existent ›features-car-model-variant‹ relationship
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "CAR MODEL VARIANT" "Toyota Yaris"
      And there exists NO "features car model variant" relationship between "F1 2025" and "Toyota Yaris"
      When the user deletes the "features car model variant" relationship between "F1 2025" and "Toyota Yaris"
      Then the request should be rejected with status code 404
