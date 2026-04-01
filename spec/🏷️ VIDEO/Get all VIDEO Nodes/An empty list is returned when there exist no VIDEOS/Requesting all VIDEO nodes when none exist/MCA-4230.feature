@REQ_MCA-4226
Feature: Get all VIDEO Nodes
  As an API consumer
  I want to be able to load all VIDEOS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-4229
  Rule: An empty list is returned when there exist no VIDEOS

    @TEST_MCA-4230 @implemented
    Scenario: Requesting all VIDEO nodes when none exist
      Given there exist 0 "VIDEO"s
      When the user requests a "VIDEO" collection
      Then the response should return a collection of 0 "VIDEO"s
      And the response should return with status code 200
