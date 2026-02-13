@REQ_MCA-2575
Feature: Create GAMING PLATFORM-has-prime-image Relationship

  @RULE_MCA-2582
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2583 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "PS5 logo"
      And there exists a "has prime image" relationship between "PlayStation 5" and "PS5 logo"
      When the user creates a "has prime image" relationship between "PlayStation 5" and "PS5 logo"
      Then the response should return with status code 304
