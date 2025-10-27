@REQ_MCA-1498
Feature: Create TRACK LAYOUT-was-used-by-racing-event Relationship

  @RULE_MCA-1505
  Rule: The same ›was-used-by-racing-event‹ relationship between the same nodes can only be created once

    @TEST_MCA-1506 @implemented
    Scenario: Trying to create the same ›was-used-by-racing-event‹ relationship again
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      And there exists a "RACING EVENT" "GP Silverstone"
      And there exists a "was used by racing event" relationship between "Grand Prix Circuit" and "GP Silverstone"
      When the user creates a "was used by racing event" relationship between "Grand Prix Circuit" and "GP Silverstone"
      Then the response should return with status code 304
