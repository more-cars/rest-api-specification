@REQ_MCA-3536
Feature: Delete PROGRAMME EPISODE-is-followed-by-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3543
  Rule: Requests to delete the ›is-followed-by-episode‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3544
    Scenario: Trying to delete a non-existent ›is-followed-by-episode‹ relationship
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "Top Gear Special"
      And there exists NO "is followed by episode" relationship between "The Holy Trinity" and "Top Gear Special"
      When the user deletes the "is followed by episode" relationship between "The Holy Trinity" and "Top Gear Special"
      Then the request should be rejected with status code 404
