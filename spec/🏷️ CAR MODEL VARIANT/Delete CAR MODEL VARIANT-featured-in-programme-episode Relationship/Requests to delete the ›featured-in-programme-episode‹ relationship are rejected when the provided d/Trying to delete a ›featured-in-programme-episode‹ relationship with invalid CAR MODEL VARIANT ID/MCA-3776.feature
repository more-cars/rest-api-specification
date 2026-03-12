@REQ_MCA-3772
Feature: Delete CAR MODEL VARIANT-featured-in-programme-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3775
  Rule: Requests to delete the ›featured-in-programme-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3776 @implemented
    Scenario: Trying to delete a ›featured-in-programme-episode‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "McLaren P1" does NOT exist
      And there exists a "PROGRAMME EPISODE" "Funeral for a Ford"
      When the user deletes the "featured in programme episode" relationship between "McLaren P1" and "Funeral for a Ford"
      Then the request should be rejected with status code 404
