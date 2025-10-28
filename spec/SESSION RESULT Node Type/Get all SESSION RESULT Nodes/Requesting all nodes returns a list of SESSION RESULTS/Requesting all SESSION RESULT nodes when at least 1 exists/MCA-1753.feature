@REQ_MCA-1751
Feature: Get all SESSION RESULT Nodes
  As an API consumer
  I want to be able to load all SESSION RESULTS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-1752
  Rule: Requesting all nodes returns a list of SESSION RESULTS

    @TEST_MCA-1753 @implemented
    Scenario: Requesting all SESSION RESULT nodes when at least 1 exists
      Given there exist 3 "SESSION RESULT"s
      When the user requests all "SESSION RESULT"s
      Then the response should return a collection of 3 "SESSION RESULT"s
      And the response should return with status code 200
