@REQ_MCA-4662
Feature: Delete RACING GAME-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING GAME
  So I can clean up bad data or test data

  @RULE_MCA-4669
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4670 @implemented
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
