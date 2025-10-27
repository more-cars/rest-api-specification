@REQ_MCA-1675
Feature: Create RACING SESSION-has-prime-image Relationship

  @RULE_MCA-1682
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1683
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "IMAGE" "starting grid"
      And there exists a "has prime image" relationship between "Grand Prix" and "starting grid"
      When the user creates a "has prime image" relationship between "Grand Prix" and "starting grid"
      Then the response should return with status code 304
