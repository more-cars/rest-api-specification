@REQ_MCA-3398
Feature: Get all PROGRAMME EPISODE Nodes
  As an API consumer
  I want to be able to load all PROGRAMME EPISODES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3399
  Rule: Requesting all nodes returns a list of PROGRAMME EPISODES

    @TEST_MCA-3400 @implemented
    Scenario: Requesting all PROGRAMME EPISODE nodes when at least 1 exists
      Given there exist 3 "PROGRAMME EPISODE"s
      When the user requests a "PROGRAMME EPISODE" collection
      Then the response should return a collection of 3 "PROGRAMME EPISODE"s
      And the response should return with status code 200
