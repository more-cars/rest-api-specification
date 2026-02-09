@REQ_MCA-1751
Feature: Get all SESSION RESULT Nodes
  As an API consumer
  I want to be able to load all SESSION RESULTS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-1754
  Rule: An empty list is returned when there exist no SESSION RESULTS

    @TEST_MCA-1755 @implemented
    Scenario: Requesting all SESSION RESULT nodes when none exist
      Given there exist 0 "SESSION RESULT"s
      When the user requests all "SESSION RESULT"s
      Then the response should return a collection of 0 "SESSION RESULT"s
      And the response should return with status code 200
