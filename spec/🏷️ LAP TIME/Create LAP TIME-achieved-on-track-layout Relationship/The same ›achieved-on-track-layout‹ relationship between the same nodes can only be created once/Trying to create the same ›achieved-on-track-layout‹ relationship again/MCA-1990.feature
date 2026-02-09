@REQ_MCA-1982
Feature: Create LAP TIME-achieved-on-track-layout Relationship

  @RULE_MCA-1989
  Rule: The same ›achieved-on-track-layout‹ relationship between the same nodes can only be created once

    @TEST_MCA-1990 @implemented
    Scenario: Trying to create the same ›achieved-on-track-layout‹ relationship again
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "achieved on track layout" relationship between "fastest lap" and "Club Circuit"
      When the user creates a "achieved on track layout" relationship between "fastest lap" and "Club Circuit"
      Then the response should return with status code 304
