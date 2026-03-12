@REQ_MCA-3309
Feature: Get all PROGRAMME Nodes
  As an API consumer
  I want to be able to load all PROGRAMMES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3310
  Rule: Requesting all nodes returns a list of PROGRAMMES

    @TEST_MCA-3311 @implemented
    Scenario: Requesting all PROGRAMME nodes when at least 1 exists
      Given there exist 3 "PROGRAMME"s
      When the user requests a "PROGRAMME" collection
      Then the response should return a collection of 3 "PROGRAMME"s
      And the response should return with status code 200
