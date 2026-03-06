@REQ_MCA-3091
Feature: Get all RATING Nodes
  As an API consumer
  I want to be able to load all RATINGS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3092
  Rule: Requesting all nodes returns a list of RATINGS

    @TEST_MCA-3093 @implemented
    Scenario: Requesting all RATING nodes when at least 1 exists
      Given there exist 3 "RATING"s
      When the user requests a "RATING" collection
      Then the response should return a collection of 3 "RATING"s
      And the response should return with status code 200
