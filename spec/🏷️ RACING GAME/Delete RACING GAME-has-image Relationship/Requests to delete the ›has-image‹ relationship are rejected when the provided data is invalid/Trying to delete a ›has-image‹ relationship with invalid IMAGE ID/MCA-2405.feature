@REQ_MCA-2400
Feature: Delete RACING GAME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2403
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2405 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING GAME" "F1 2025"
      And "IMAGE" "rallye course" does NOT exist
      When the user deletes the "has image" relationship between "F1 2025" and "rallye course"
      Then the request should be rejected with status code 404
