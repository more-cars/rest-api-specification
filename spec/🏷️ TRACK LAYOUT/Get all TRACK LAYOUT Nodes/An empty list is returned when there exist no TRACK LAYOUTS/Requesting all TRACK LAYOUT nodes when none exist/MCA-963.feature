@REQ_MCA-959
Feature: Get all TRACK LAYOUT Nodes
  As an API consumer
  I want to be able to load all TRACK LAYOUTS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-962
  Rule: An empty list is returned when there exist no TRACK LAYOUTS

    @TEST_MCA-963 @implemented
    Scenario: Requesting all TRACK LAYOUT nodes when none exist
      Given there exist 0 "TRACK LAYOUT"s
      When the user requests all "TRACK LAYOUT"s
      Then the response should return a collection of 0 "TRACK LAYOUT"s
      And the response should return with status code 200
