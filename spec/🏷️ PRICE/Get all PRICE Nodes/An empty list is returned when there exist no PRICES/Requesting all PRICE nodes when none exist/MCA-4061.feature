@REQ_MCA-4057
Feature: Get all PRICE Nodes
  As an API consumer
  I want to be able to load all PRICES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-4060
  Rule: An empty list is returned when there exist no PRICES

    @TEST_MCA-4061 @implemented
    Scenario: Requesting all PRICE nodes when none exist
      Given there exist 0 "PRICE"s
      When the user requests a "PRICE" collection
      Then the response should return a collection of 0 "PRICE"s
      And the response should return with status code 200
