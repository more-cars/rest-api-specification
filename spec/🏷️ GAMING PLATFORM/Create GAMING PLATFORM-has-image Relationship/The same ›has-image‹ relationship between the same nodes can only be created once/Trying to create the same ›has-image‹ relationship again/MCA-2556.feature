@REQ_MCA-2548
Feature: Create GAMING PLATFORM-has-image Relationship

  @RULE_MCA-2555
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2556 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "PS5 logo"
      And there exists a "has image" relationship between "PlayStation 5" and "PS5 logo"
      When the user creates a "has image" relationship between "PlayStation 5" and "PS5 logo"
      Then the response should return with status code 304
