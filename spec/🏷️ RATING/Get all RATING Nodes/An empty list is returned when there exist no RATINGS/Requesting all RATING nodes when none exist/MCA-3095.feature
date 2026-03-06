@REQ_MCA-3091
Feature: Get all RATING Nodes
  As an API consumer
  I want to be able to load all RATINGS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3094
  Rule: An empty list is returned when there exist no RATINGS

    @TEST_MCA-3095 @implemented
    Scenario: Requesting all RATING nodes when none exist
      Given there exist 0 "RATING"s
      When the user requests a "RATING" collection
      Then the response should return a collection of 0 "RATING"s
      And the response should return with status code 200
