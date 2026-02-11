@REQ_MCA-2400
Feature: Delete RACING GAME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2407
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2408 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "rallye course"
      And there exists NO "has image" relationship between "F1 2025" and "rallye course"
      When the user deletes the "has image" relationship between "F1 2025" and "rallye course"
      Then the request should be rejected with status code 404
