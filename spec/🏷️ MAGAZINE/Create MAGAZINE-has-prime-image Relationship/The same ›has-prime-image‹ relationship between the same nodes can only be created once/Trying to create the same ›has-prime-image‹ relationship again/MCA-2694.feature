@REQ_MCA-2686
Feature: Create MAGAZINE-has-prime-image Relationship

  @RULE_MCA-2693
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2694 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "cover"
      And there exists a "has prime image" relationship between "Top Gear" and "cover"
      When the user creates a "has prime image" relationship between "Top Gear" and "cover"
      Then the response should return with status code 304
