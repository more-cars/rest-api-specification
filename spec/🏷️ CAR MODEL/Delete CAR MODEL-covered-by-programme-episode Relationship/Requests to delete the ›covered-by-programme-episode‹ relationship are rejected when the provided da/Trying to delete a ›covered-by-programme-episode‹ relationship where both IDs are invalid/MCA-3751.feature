@REQ_MCA-3745
Feature: Delete CAR MODEL-covered-by-programme-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-3748
  Rule: Requests to delete the ›covered-by-programme-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3751 @implemented
    Scenario: Trying to delete a ›covered-by-programme-episode‹ relationship where both IDs are invalid
      Given "CAR MODEL" "McLaren P1" does NOT exist
      And "PROGRAMME EPISODE" "Funeral for a Ford" does NOT exist
      When the user deletes the "covered by programme episode" relationship between "McLaren P1" and "Funeral for a Ford"
      Then the request should be rejected with status code 404
