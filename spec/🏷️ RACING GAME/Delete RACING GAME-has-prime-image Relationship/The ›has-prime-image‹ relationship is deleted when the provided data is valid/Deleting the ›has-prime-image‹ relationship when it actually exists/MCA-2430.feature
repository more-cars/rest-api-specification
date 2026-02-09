@REQ_MCA-2428
Feature: Delete RACING GAME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2429
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2430
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "Audi Quattro"
      And there exists a "has prime image" relationship "R" between "F1 2025" and "Audi Quattro"
      When the user deletes the "has prime image" relationship between "F1 2025" and "Audi Quattro"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
