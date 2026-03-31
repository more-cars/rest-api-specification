@REQ_MCA-5278
Feature: Delete PROGRAMME EPISODE-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a PROGRAMME EPISODE
  So I can clean up bad data or test data

  @RULE_MCA-5279
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5280
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "The Holy Trinity" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
