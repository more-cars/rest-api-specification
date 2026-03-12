@REQ_MCA-3455
Feature: Delete PROGRAMME EPISODE-covers-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3458
  Rule: Requests to delete the ›covers-car-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3461 @implemented
    Scenario: Trying to delete a ›covers-car-model‹ relationship where both IDs are invalid
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And "CAR MODEL" "Twingo" does NOT exist
      When the user deletes the "covers car model" relationship between "The Holy Trinity" and "Twingo"
      Then the request should be rejected with status code 404
