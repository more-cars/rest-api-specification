@REQ_MCA-3428
Feature: Delete PROGRAMME EPISODE-belongs-to-programme Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMMES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3431
  Rule: Requests to delete the ›belongs-to-programme‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3433 @implemented
    Scenario: Trying to delete a ›belongs-to-programme‹ relationship with invalid PROGRAMME ID
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And "PROGRAMME" "Top Gear" does NOT exist
      When the user deletes the "belongs to programme" relationship between "The Holy Trinity" and "Top Gear"
      Then the request should be rejected with status code 404
