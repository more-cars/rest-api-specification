@REQ_MCA-1270
Feature: Get all RACING EVENT Nodes
  As an API consumer
  I want to be able to load all RACING EVENTS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-1271
  Rule: Requesting all nodes returns a list of RACING EVENTS

    @TEST_MCA-1272 @implemented
    Scenario: Requesting all RACING EVENT nodes when at least 1 exists
      Given there exist 3 "RACING EVENT"s
      When the user requests all "RACING EVENT"s
      Then the response should return a collection of 3 "RACING EVENT"s
      And the response should return with status code 200
