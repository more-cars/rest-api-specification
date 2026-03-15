@REQ_MCA-3673
Feature: Create MOTOR SHOW-has-prime-image Relationship

  @RULE_MCA-3680
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3681 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "IAA logo"
      And there exists a "has prime image" relationship between "IAA Frankfurt" and "IAA logo"
      When the user creates a "has prime image" relationship between "IAA Frankfurt" and "IAA logo"
      Then the response should return with status code 304
