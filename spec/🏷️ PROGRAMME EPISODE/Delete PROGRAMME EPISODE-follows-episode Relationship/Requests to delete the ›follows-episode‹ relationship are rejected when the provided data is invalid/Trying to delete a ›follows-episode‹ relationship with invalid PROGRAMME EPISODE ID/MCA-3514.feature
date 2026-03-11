@REQ_MCA-3509
Feature: Delete PROGRAMME EPISODE-follows-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3512
  Rule: Requests to delete the ›follows-episode‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3514
    Scenario: Trying to delete a ›follows-episode‹ relationship with invalid PROGRAMME EPISODE ID
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And "PROGRAMME EPISODE" "Top Gear Special" does NOT exist
      When the user deletes the "follows episode" relationship between "The Holy Trinity" and "Top Gear Special"
      Then the request should be rejected with status code 404
