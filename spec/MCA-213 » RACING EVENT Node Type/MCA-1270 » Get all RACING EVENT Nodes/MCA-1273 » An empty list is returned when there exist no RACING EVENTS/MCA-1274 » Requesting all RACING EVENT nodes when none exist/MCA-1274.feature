@REQ_MCA-1270
Feature: Get all RACING EVENT Nodes
  As an API consumer
  I want to be able to load all RACING EVENTS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-1273
  Rule: An empty list is returned when there exist no RACING EVENTS

    @TEST_MCA-1274 @implemented
    Scenario: Requesting all RACING EVENT nodes when none exist
      Given there exist 0 "RACING EVENT"s
      When the user requests all "RACING EVENT"s
      Then the response should return a collection of 0 "RACING EVENT"s
      And the response should return with status code 200
