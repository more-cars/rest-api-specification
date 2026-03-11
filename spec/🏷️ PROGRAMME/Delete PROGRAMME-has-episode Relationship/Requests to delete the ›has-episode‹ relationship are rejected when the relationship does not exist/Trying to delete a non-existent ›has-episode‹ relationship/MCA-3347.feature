@REQ_MCA-3339
Feature: Delete PROGRAMME-has-episode Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMME EPISODES from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-3346
  Rule: Requests to delete the ›has-episode‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3347
    Scenario: Trying to delete a non-existent ›has-episode‹ relationship
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "PROGRAMME EPISODE" "Top Gear Special"
      And there exists NO "has episode" relationship between "The Grand Tour" and "Top Gear Special"
      When the user deletes the "has episode" relationship between "The Grand Tour" and "Top Gear Special"
      Then the request should be rejected with status code 404
