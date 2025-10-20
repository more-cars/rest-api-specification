@REQ_MCA-929
Feature: Get all RACE TRACK Nodes
  As an API consumer
  I want to be able to load all RACE TRACKS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-932
  Rule: An empty list is returned when there exist no RACE TRACKS

    @TEST_MCA-933 @implemented
    Scenario: Requesting all RACE TRACK nodes when none exist
      Given there exist 0 "RACE TRACK"s
      When the user requests all "RACE TRACK"s
      Then the response should return a collection of 0 "RACE TRACK"s
      And the response should return with status code 200
