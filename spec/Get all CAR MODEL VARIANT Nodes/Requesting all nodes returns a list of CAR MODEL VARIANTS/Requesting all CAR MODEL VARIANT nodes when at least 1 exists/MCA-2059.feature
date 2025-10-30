@REQ_MCA-2057
Feature: Get all CAR MODEL VARIANT Nodes
  As an API consumer
  I want to be able to load all CAR MODEL VARIANTS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-2058
  Rule: Requesting all nodes returns a list of CAR MODEL VARIANTS

    @TEST_MCA-2059 @implemented
    Scenario: Requesting all CAR MODEL VARIANT nodes when at least 1 exists
      Given there exist 3 "CAR MODEL VARIANT"s
      When the user requests all "CAR MODEL VARIANT"s
      Then the response should return a collection of 3 "CAR MODEL VARIANT"s
      And the response should return with status code 200
