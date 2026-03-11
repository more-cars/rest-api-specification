@REQ_MCA-3309
Feature: Get all PROGRAMME Nodes
  As an API consumer
  I want to be able to load all PROGRAMMES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3312
  Rule: An empty list is returned when there exist no PROGRAMMES

    @TEST_MCA-3313
    Scenario: Requesting all PROGRAMME nodes when none exist
      Given there exist 0 "PROGRAMME"s
      When the user requests a "PROGRAMME" collection
      Then the response should return a collection of 0 "PROGRAMME"s
      And the response should return with status code 200
