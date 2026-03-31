@REQ_MCA-5251
Feature: Delete PROGRAMME EPISODE-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-5254
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5257
    Scenario: Trying to delete a ›has-video‹ relationship where both IDs are invalid
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be rejected with status code 404
