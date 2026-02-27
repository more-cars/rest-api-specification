@REQ_MCA-2647
Feature: Get all MAGAZINE Nodes
  As an API consumer
  I want to be able to load all MAGAZINES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-2650
  Rule: An empty list is returned when there exist no MAGAZINES

    @TEST_MCA-2651
    Scenario: Requesting all MAGAZINE nodes when none exist
      Given there exist 0 "MAGAZINE"s
      When the user requests all "MAGAZINE"s
      Then the response should return a collection of 0 "MAGAZINE"s
      And the response should return with status code 200
