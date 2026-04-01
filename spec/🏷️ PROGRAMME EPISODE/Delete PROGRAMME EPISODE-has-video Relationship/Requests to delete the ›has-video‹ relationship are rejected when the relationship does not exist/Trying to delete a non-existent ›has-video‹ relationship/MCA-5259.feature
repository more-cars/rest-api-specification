@REQ_MCA-5251
Feature: Delete PROGRAMME EPISODE-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-5258
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5259 @implemented
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "The Holy Trinity" and "Promo Video"
      When the user deletes the "has-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be rejected with status code 404
