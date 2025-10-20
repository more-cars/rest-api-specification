@REQ_MCA-929
Feature: Get all RACE TRACK Nodes
  As an API consumer
  I want to be able to load all RACE TRACKS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-930
  Rule: Requesting all nodes returns a list of RACE TRACKS

    @TEST_MCA-931 @implemented
    Scenario: Requesting all RACE TRACK nodes when at least 1 exists
      Given there exist 3 "RACE TRACK"s
      When the user requests all "RACE TRACK"s
      Then the response should return a collection of 3 "RACE TRACK"s
      And the response should return with status code 200
