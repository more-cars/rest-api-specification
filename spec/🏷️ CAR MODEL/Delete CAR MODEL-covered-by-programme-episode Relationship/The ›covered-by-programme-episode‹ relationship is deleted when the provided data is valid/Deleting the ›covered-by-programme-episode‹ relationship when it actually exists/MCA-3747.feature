@REQ_MCA-3745
Feature: Delete CAR MODEL-covered-by-programme-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-3746
  Rule: The ›covered-by-programme-episode‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3747 @implemented
    Scenario: Deleting the ›covered-by-programme-episode‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "Funeral for a Ford"
      And there exists a "covered by programme episode" relationship "R" between "McLaren P1" and "Funeral for a Ford"
      When the user deletes the "covered by programme episode" relationship between "McLaren P1" and "Funeral for a Ford"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
