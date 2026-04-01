@REQ_MCA-4226
Feature: Get all VIDEO Nodes
  As an API consumer
  I want to be able to load all VIDEOS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-4227
  Rule: Requesting all nodes returns a list of VIDEOS

    @TEST_MCA-4228 @implemented
    Scenario: Requesting all VIDEO nodes when at least 1 exists
      Given there exist 3 "VIDEO"s
      When the user requests a "VIDEO" collection
      Then the response should return a collection of 3 "VIDEO"s
      And the response should return with status code 200
