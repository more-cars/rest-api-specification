@REQ_MCA-2316
Feature: Get all RACING GAME Nodes
  As an API consumer
  I want to be able to load all RACING GAMES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-2317
  Rule: Requesting all nodes returns a list of RACING GAMES

    @TEST_MCA-2318 @implemented
    Scenario: Requesting all RACING GAME nodes when at least 1 exists
      Given there exist 3 "RACING GAME"s
      When the user requests all "RACING GAME"s
      Then the response should return a collection of 3 "RACING GAME"s
      And the response should return with status code 200
