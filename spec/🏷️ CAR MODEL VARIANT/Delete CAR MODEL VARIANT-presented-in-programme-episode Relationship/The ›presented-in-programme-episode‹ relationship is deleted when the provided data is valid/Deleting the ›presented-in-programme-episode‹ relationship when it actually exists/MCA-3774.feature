@REQ_MCA-3772
Feature: Delete CAR MODEL VARIANT-presented-in-programme-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3773
  Rule: The ›presented-in-programme-episode‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3774
    Scenario: Deleting the ›presented-in-programme-episode‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "Funeral for a Ford"
      And there exists a "presented in programme episode" relationship "R" between "McLaren P1" and "Funeral for a Ford"
      When the user deletes the "presented in programme episode" relationship between "McLaren P1" and "Funeral for a Ford"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
