@REQ_MCA-5278
Feature: Delete PROGRAMME EPISODE-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a PROGRAMME EPISODE
  So I can clean up bad data or test data

  @RULE_MCA-5281
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5283 @implemented
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid VIDEO ID
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be rejected with status code 404
