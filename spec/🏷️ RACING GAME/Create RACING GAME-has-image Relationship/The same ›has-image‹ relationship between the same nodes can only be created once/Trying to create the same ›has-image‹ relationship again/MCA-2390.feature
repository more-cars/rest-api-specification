@REQ_MCA-2382
Feature: Create RACING GAME-has-image Relationship

  @RULE_MCA-2389
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2390 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "dvd cover"
      And there exists a "has image" relationship between "F1 2025" and "dvd cover"
      When the user creates a "has image" relationship between "F1 2025" and "dvd cover"
      Then the response should return with status code 304
