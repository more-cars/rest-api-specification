@REQ_MCA-1862
Feature: Get all LAP TIME Nodes
  As an API consumer
  I want to be able to load all LAP TIMES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-1865
  Rule: An empty list is returned when there exist no LAP TIMES

    @TEST_MCA-1866 @implemented
    Scenario: Requesting all LAP TIME nodes when none exist
      Given there exist 0 "LAP TIME"s
      When the user requests all "LAP TIME"s
      Then the response should return a collection of 0 "LAP TIME"s
      And the response should return with status code 200
