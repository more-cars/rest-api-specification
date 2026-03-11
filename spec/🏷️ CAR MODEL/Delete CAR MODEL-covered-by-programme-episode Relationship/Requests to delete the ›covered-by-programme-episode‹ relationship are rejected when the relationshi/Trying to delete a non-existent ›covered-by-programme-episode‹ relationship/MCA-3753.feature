@REQ_MCA-3745
Feature: Delete CAR MODEL-covered-by-programme-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-3752
  Rule: Requests to delete the ›covered-by-programme-episode‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3753
    Scenario: Trying to delete a non-existent ›covered-by-programme-episode‹ relationship
      Given there exists a "CAR MODEL" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "Funeral for a Ford"
      And there exists NO "covered by programme episode" relationship between "McLaren P1" and "Funeral for a Ford"
      When the user deletes the "covered by programme episode" relationship between "McLaren P1" and "Funeral for a Ford"
      Then the request should be rejected with status code 404
