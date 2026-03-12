@REQ_MCA-3563
Feature: Delete PROGRAMME EPISODE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3566
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3568 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And "IMAGE" "Top Gear logo" does NOT exist
      When the user deletes the "has image" relationship between "The Holy Trinity" and "Top Gear logo"
      Then the request should be rejected with status code 404
