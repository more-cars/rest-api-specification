@REQ_MCA-3428
Feature: Delete PROGRAMME EPISODE-belongs-to-programme Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMMES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3435
  Rule: Requests to delete the ›belongs-to-programme‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3436 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-programme‹ relationship
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME" "Top Gear"
      And there exists NO "belongs to programme" relationship between "The Holy Trinity" and "Top Gear"
      When the user deletes the "belongs to programme" relationship between "The Holy Trinity" and "Top Gear"
      Then the request should be rejected with status code 404
