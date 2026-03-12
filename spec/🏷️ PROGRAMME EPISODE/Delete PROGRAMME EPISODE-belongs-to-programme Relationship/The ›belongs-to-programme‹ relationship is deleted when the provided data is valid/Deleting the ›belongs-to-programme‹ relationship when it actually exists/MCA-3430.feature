@REQ_MCA-3428
Feature: Delete PROGRAMME EPISODE-belongs-to-programme Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMMES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3429
  Rule: The ›belongs-to-programme‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3430 @implemented
    Scenario: Deleting the ›belongs-to-programme‹ relationship when it actually exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME" "Top Gear"
      And there exists a "belongs to programme" relationship "R" between "The Holy Trinity" and "Top Gear"
      When the user deletes the "belongs to programme" relationship between "The Holy Trinity" and "Top Gear"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
