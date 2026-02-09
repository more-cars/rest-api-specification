@REQ_MCA-2409
Feature: Create RACING GAME-has-prime-image Relationship

  @RULE_MCA-2416
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2417
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "dvd cover"
      And there exists a "has prime image" relationship between "F1 2025" and "dvd cover"
      When the user creates a "has prime image" relationship between "F1 2025" and "dvd cover"
      Then the response should return with status code 304
