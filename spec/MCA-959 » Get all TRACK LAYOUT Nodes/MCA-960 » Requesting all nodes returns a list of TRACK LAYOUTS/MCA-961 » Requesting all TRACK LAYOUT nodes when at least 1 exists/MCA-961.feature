@REQ_MCA-959
Feature: Get all TRACK LAYOUT Nodes
  As an API consumer
  I want to be able to load all TRACK LAYOUTS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-960
  Rule: Requesting all nodes returns a list of TRACK LAYOUTS

    @TEST_MCA-961 @implemented
    Scenario: Requesting all TRACK LAYOUT nodes when at least 1 exists
      Given there exist 3 "TRACK LAYOUT"s
      When the user requests all "TRACK LAYOUT"s
      Then the response should return a collection of 3 "TRACK LAYOUT"s
      And the response should return with status code 200
