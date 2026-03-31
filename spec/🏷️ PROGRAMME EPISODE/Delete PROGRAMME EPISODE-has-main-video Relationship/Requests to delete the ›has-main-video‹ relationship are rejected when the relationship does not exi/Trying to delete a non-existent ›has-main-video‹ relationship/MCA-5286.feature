@REQ_MCA-5278
Feature: Delete PROGRAMME EPISODE-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a PROGRAMME EPISODE
  So I can clean up bad data or test data

  @RULE_MCA-5285
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5286
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "The Holy Trinity" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be rejected with status code 404
