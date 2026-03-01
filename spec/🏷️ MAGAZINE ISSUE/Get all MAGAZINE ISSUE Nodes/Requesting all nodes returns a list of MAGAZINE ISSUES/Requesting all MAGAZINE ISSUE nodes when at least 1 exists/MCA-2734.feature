@REQ_MCA-2732
Feature: Get all MAGAZINE ISSUE Nodes
  As an API consumer
  I want to be able to load all MAGAZINE ISSUES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-2733
  Rule: Requesting all nodes returns a list of MAGAZINE ISSUES

    @TEST_MCA-2734
    Scenario: Requesting all MAGAZINE ISSUE nodes when at least 1 exists
      Given there exist 3 "MAGAZINE ISSUE"s
      When the user requests all "MAGAZINE ISSUE"s
      Then the response should return a collection of 3 "MAGAZINE ISSUE"s
      And the response should return with status code 200
