@REQ_MCA-5197
Feature: Delete PROGRAMME-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from PROGRAMMES
  So I can clean up bad data or test data

  @RULE_MCA-5204
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5205 @implemented
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "The Grand Tour" and "Promo Video"
      When the user deletes the "has-video" relationship between "The Grand Tour" and "Promo Video"
      Then the request should be rejected with status code 404
