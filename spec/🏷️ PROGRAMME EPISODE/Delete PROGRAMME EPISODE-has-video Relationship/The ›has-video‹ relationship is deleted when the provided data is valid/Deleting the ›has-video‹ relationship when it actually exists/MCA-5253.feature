@REQ_MCA-5251
Feature: Delete PROGRAMME EPISODE-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-5252
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5253
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "The Holy Trinity" and "Promo Video"
      When the user deletes the "has-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
