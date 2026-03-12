@REQ_MCA-3455
Feature: Delete PROGRAMME EPISODE-covers-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3462
  Rule: Requests to delete the ›covers-car-model‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3463 @implemented
    Scenario: Trying to delete a non-existent ›covers-car-model‹ relationship
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL" "Twingo"
      And there exists NO "covers car model" relationship between "The Holy Trinity" and "Twingo"
      When the user deletes the "covers car model" relationship between "The Holy Trinity" and "Twingo"
      Then the request should be rejected with status code 404
