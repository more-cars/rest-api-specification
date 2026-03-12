@REQ_MCA-3398
Feature: Get all PROGRAMME EPISODE Nodes
  As an API consumer
  I want to be able to load all PROGRAMME EPISODES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3401
  Rule: An empty list is returned when there exist no PROGRAMME EPISODES

    @TEST_MCA-3402 @implemented
    Scenario: Requesting all PROGRAMME EPISODE nodes when none exist
      Given there exist 0 "PROGRAMME EPISODE"s
      When the user requests a "PROGRAMME EPISODE" collection
      Then the response should return a collection of 0 "PROGRAMME EPISODE"s
      And the response should return with status code 200
