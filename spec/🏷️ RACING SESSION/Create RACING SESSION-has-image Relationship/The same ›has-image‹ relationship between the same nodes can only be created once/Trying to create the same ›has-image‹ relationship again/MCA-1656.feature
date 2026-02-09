@REQ_MCA-1648
Feature: Create RACING SESSION-has-image Relationship

  @RULE_MCA-1655
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1656 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "starting grid"
      And there exists a "has image" relationship between "Grand Prix" and "starting grid"
      When the user creates a "has image" relationship between "Grand Prix" and "starting grid"
      Then the response should return with status code 304
