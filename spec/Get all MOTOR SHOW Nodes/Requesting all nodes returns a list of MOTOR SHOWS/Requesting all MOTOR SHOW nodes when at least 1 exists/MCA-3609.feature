@REQ_MCA-3607
Feature: Get all MOTOR SHOW Nodes
  As an API consumer
  I want to be able to load all MOTOR SHOWS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3608
  Rule: Requesting all nodes returns a list of MOTOR SHOWS

    @TEST_MCA-3609
    Scenario: Requesting all MOTOR SHOW nodes when at least 1 exists
      Given there exist 3 "MOTOR SHOW"s
      When the user requests a "MOTOR SHOW" collection
      Then the response should return a collection of 3 "MOTOR SHOW"s
      And the response should return with status code 200
