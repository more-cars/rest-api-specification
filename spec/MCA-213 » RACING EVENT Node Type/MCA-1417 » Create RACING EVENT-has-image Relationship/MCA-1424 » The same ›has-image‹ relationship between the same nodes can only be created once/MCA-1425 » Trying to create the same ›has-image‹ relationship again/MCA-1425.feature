@REQ_MCA-1417
Feature: Create RACING EVENT-has-image Relationship

  @RULE_MCA-1424
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1425 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "RACING EVENT" "GP Silverstone"
      And there exists a "IMAGE" "starting grid"
      And there exists a "has image" relationship between "GP Silverstone" and "starting grid"
      When the user creates a "has image" relationship between "GP Silverstone" and "starting grid"
      Then the response should return with status code 304
