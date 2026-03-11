@REQ_MCA-3482
Feature: Delete PROGRAMME EPISODE-features-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3489
  Rule: Requests to delete the ›features-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3490
    Scenario: Trying to delete a non-existent ›features-car-model-variant‹ relationship
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL VARIANT" "Lada Samara"
      And there exists NO "features car model variant" relationship between "The Holy Trinity" and "Lada Samara"
      When the user deletes the "features car model variant" relationship between "The Holy Trinity" and "Lada Samara"
      Then the request should be rejected with status code 404
