@REQ_MCA-2647
Feature: Get all MAGAZINE Nodes
  As an API consumer
  I want to be able to load all MAGAZINES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-2648
  Rule: Requesting all nodes returns a list of MAGAZINES

    @TEST_MCA-2649
    Scenario: Requesting all MAGAZINE nodes when at least 1 exists
      Given there exist 3 "MAGAZINE"s
      When the user requests all "MAGAZINE"s
      Then the response should return a collection of 3 "MAGAZINE"s
      And the response should return with status code 200
