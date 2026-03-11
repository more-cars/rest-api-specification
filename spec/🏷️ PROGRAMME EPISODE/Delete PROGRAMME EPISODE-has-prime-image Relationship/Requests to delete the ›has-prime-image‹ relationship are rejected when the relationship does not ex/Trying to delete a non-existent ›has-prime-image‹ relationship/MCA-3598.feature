@REQ_MCA-3590
Feature: Delete PROGRAMME EPISODE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3597
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3598
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "IMAGE" "Top Gear logo"
      And there exists NO "has prime image" relationship between "The Holy Trinity" and "Top Gear logo"
      When the user deletes the "has prime image" relationship between "The Holy Trinity" and "Top Gear logo"
      Then the request should be rejected with status code 404
