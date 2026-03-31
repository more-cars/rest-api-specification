@REQ_MCA-4662
Feature: Delete RACING GAME-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING GAME
  So I can clean up bad data or test data

  @RULE_MCA-4663
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4664
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "RACING GAME" "Assetto Corsa"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "Assetto Corsa" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
