@REQ_MCA-2346
Feature: Delete RACING GAME-features-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2349
  Rule: Requests to delete the ›features-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2350 @implemented
    Scenario: Trying to delete a ›features-car-model-variant‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "F1 2025" does NOT exist
      And there exists a "CAR MODEL VARIANT" "Toyota Yaris"
      When the user deletes the "features car model variant" relationship between "F1 2025" and "Toyota Yaris"
      Then the request should be rejected with status code 404
