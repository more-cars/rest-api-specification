@REQ_MCA-4057
Feature: Get all PRICE Nodes
  As an API consumer
  I want to be able to load all PRICES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-4058
  Rule: Requesting all nodes returns a list of PRICES

    @TEST_MCA-4059 @implemented
    Scenario: Requesting all PRICE nodes when at least 1 exists
      Given there exist 3 "PRICE"s
      When the user requests a "PRICE" collection
      Then the response should return a collection of 3 "PRICE"s
      And the response should return with status code 200
