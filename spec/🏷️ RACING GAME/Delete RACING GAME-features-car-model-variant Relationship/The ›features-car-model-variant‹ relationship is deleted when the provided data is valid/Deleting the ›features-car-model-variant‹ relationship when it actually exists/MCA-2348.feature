@REQ_MCA-2346
Feature: Delete RACING GAME-features-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2347
  Rule: The ›features-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2348
    Scenario: Deleting the ›features-car-model-variant‹ relationship when it actually exists
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "CAR MODEL VARIANT" "Toyota Yaris"
      And there exists a "features car model variant" relationship "R" between "F1 2025" and "Toyota Yaris"
      When the user deletes the "features car model variant" relationship between "F1 2025" and "Toyota Yaris"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
