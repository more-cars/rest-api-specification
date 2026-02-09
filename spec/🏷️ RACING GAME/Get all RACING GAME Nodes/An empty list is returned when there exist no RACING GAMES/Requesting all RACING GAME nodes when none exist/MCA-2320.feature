@REQ_MCA-2316
Feature: Get all RACING GAME Nodes
  As an API consumer
  I want to be able to load all RACING GAMES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-2319
  Rule: An empty list is returned when there exist no RACING GAMES

    @TEST_MCA-2320
    Scenario: Requesting all RACING GAME nodes when none exist
      Given there exist 0 "RACING GAME"s
      When the user requests all "RACING GAME"s
      Then the response should return a collection of 0 "RACING GAME"s
      And the response should return with status code 200
