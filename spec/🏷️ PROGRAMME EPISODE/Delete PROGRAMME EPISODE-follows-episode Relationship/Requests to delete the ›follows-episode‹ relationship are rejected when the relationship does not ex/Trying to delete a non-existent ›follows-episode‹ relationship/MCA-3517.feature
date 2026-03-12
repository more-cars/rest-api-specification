@REQ_MCA-3509
Feature: Delete PROGRAMME EPISODE-follows-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3516
  Rule: Requests to delete the ›follows-episode‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3517 @implemented
    Scenario: Trying to delete a non-existent ›follows-episode‹ relationship
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "Top Gear Special"
      And there exists NO "follows episode" relationship between "The Holy Trinity" and "Top Gear Special"
      When the user deletes the "follows episode" relationship between "The Holy Trinity" and "Top Gear Special"
      Then the request should be rejected with status code 404
