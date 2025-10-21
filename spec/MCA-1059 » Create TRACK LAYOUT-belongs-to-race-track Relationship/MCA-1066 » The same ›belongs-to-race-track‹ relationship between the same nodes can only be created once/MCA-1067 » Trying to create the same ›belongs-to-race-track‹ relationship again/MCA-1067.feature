@REQ_MCA-1059
Feature: Create TRACK LAYOUT-belongs-to-race-track Relationship

  @RULE_MCA-1066
  Rule: The same ›belongs-to-race-track‹ relationship between the same nodes can only be created once

    @TEST_MCA-1067 @implemented
    Scenario: Trying to create the same ›belongs-to-race-track‹ relationship again
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "RACE TRACK" "Silverstone"
      And there exists a "belongs to race track" relationship between "Club Circuit" and "Silverstone"
      When the user creates a "belongs to race track" relationship between "Club Circuit" and "Silverstone"
      Then the response should return with status code 304
