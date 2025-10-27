@REQ_MCA-1582
Feature: Get all RACING SESSION Nodes
  As an API consumer
  I want to be able to load all RACING SESSIONS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-1585
  Rule: An empty list is returned when there exist no RACING SESSIONS

    @TEST_MCA-1586
    Scenario: Requesting all RACING SESSION nodes when none exist
      Given there exist 0 "RACING SESSION"s
      When the user requests all "RACING SESSION"s
      Then the response should return a collection of 0 "RACING SESSION"s
      And the response should return with status code 200
