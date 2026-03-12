@REQ_MCA-3428
Feature: Delete PROGRAMME EPISODE-belongs-to-programme Relationship
  As an API contributor
  I want to be able to disconnect PROGRAMMES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3431
  Rule: Requests to delete the ›belongs-to-programme‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3432 @implemented
    Scenario: Trying to delete a ›belongs-to-programme‹ relationship with invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And there exists a "PROGRAMME" "Top Gear"
      When the user deletes the "belongs to programme" relationship between "The Holy Trinity" and "Top Gear"
      Then the request should be rejected with status code 404
