@REQ_MCA-2009
Feature: Create TRACK LAYOUT-has-lap-time Relationship

  @RULE_MCA-2016
  Rule: The same ›has-lap-time‹ relationship between the same nodes can only be created once

    @TEST_MCA-2017 @implemented
    Scenario: Trying to create the same ›has-lap-time‹ relationship again
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "LAP TIME" "fastest lap"
      And there exists a "has lap time" relationship between "Club Circuit" and "fastest lap"
      When the user creates a "has lap time" relationship between "Club Circuit" and "fastest lap"
      Then the response should return with status code 304
