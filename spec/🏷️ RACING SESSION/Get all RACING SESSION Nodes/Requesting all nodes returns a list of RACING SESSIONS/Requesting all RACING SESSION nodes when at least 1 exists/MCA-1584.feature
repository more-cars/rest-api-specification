@REQ_MCA-1582
Feature: Get all RACING SESSION Nodes
  As an API consumer
  I want to be able to load all RACING SESSIONS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-1583
  Rule: Requesting all nodes returns a list of RACING SESSIONS

    @TEST_MCA-1584 @implemented
    Scenario: Requesting all RACING SESSION nodes when at least 1 exists
      Given there exist 3 "RACING SESSION"s
      When the user requests all "RACING SESSION"s
      Then the response should return a collection of 3 "RACING SESSION"s
      And the response should return with status code 200
