@REQ_MCA-2400
Feature: Delete RACING GAME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2401
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2402
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "rallye course"
      And there exists a "has image" relationship "R" between "F1 2025" and "rallye course"
      When the user deletes the "has image" relationship between "F1 2025" and "rallye course"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
