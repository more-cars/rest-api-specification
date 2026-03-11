@REQ_MCA-3772
Feature: Delete CAR MODEL VARIANT-presented-in-programme-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3775
  Rule: Requests to delete the ›presented-in-programme-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3777
    Scenario: Trying to delete a ›presented-in-programme-episode‹ relationship with invalid PROGRAMME EPISODE ID
      Given there exists a "CAR MODEL VARIANT" "McLaren P1"
      And "PROGRAMME EPISODE" "Funeral for a Ford" does NOT exist
      When the user deletes the "presented in programme episode" relationship between "McLaren P1" and "Funeral for a Ford"
      Then the request should be rejected with status code 404
