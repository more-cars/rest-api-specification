@REQ_MCA-2732
Feature: Get all MAGAZINE ISSUE Nodes
  As an API consumer
  I want to be able to load all MAGAZINE ISSUES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-2735
  Rule: An empty list is returned when there exist no MAGAZINE ISSUES

    @TEST_MCA-2736
    Scenario: Requesting all MAGAZINE ISSUE nodes when none exist
      Given there exist 0 "MAGAZINE ISSUE"s
      When the user requests a "MAGAZINE ISSUE" collection
      Then the response should return a collection of 0 "MAGAZINE ISSUE"s
      And the response should return with status code 200
