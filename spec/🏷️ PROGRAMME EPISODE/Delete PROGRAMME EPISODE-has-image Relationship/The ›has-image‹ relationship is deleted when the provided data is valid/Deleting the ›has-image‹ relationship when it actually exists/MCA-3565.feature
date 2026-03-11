@REQ_MCA-3563
Feature: Delete PROGRAMME EPISODE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3564
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3565
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "IMAGE" "Top Gear logo"
      And there exists a "has image" relationship "R" between "The Holy Trinity" and "Top Gear logo"
      When the user deletes the "has image" relationship between "The Holy Trinity" and "Top Gear logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
