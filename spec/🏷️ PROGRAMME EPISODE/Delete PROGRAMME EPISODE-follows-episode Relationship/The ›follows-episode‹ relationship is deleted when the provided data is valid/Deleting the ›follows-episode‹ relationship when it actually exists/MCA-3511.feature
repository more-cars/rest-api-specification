@REQ_MCA-3509
Feature: Delete PROGRAMME EPISODE-follows-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3510
  Rule: The ›follows-episode‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3511
    Scenario: Deleting the ›follows-episode‹ relationship when it actually exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "Top Gear Special"
      And there exists a "follows episode" relationship "R" between "The Holy Trinity" and "Top Gear Special"
      When the user deletes the "follows episode" relationship between "The Holy Trinity" and "Top Gear Special"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
