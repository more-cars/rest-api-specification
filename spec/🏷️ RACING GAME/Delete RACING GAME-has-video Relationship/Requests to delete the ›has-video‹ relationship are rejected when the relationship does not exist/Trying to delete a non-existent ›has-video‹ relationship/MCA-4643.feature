@REQ_MCA-4635
Feature: Delete RACING GAME-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-4642
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4643
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Assetto Corsa" and "Promo Video"
      When the user deletes the "has-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
