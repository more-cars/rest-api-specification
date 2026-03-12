@REQ_MCA-3590
Feature: Delete PROGRAMME EPISODE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3593
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3594 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      And there exists a "IMAGE" "Top Gear logo"
      When the user deletes the "has prime image" relationship between "The Holy Trinity" and "Top Gear logo"
      Then the request should be rejected with status code 404
