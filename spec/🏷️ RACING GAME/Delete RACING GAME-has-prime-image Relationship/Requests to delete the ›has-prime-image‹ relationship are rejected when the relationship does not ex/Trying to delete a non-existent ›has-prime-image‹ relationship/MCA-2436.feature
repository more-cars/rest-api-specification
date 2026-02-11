@REQ_MCA-2428
Feature: Delete RACING GAME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2435
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2436 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "Audi Quattro"
      And there exists NO "has prime image" relationship between "F1 2025" and "Audi Quattro"
      When the user deletes the "has prime image" relationship between "F1 2025" and "Audi Quattro"
      Then the request should be rejected with status code 404
