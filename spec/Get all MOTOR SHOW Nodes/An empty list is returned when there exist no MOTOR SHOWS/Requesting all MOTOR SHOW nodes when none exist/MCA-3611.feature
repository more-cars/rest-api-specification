@REQ_MCA-3607
Feature: Get all MOTOR SHOW Nodes
  As an API consumer
  I want to be able to load all MOTOR SHOWS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3610
  Rule: An empty list is returned when there exist no MOTOR SHOWS

    @TEST_MCA-3611
    Scenario: Requesting all MOTOR SHOW nodes when none exist
      Given there exist 0 "MOTOR SHOW"s
      When the user requests a "MOTOR SHOW" collection
      Then the response should return a collection of 0 "MOTOR SHOW"s
      And the response should return with status code 200
