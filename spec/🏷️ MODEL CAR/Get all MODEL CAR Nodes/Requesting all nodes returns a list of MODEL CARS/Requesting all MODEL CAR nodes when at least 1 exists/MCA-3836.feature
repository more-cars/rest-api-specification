@REQ_MCA-3834
Feature: Get all MODEL CAR Nodes
  As an API consumer
  I want to be able to load all MODEL CARS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3835
  Rule: Requesting all nodes returns a list of MODEL CARS

    @TEST_MCA-3836
    Scenario: Requesting all MODEL CAR nodes when at least 1 exists
      Given there exist 3 "MODEL CAR"s
      When the user requests a "MODEL CAR" collection
      Then the response should return a collection of 3 "MODEL CAR"s
      And the response should return with status code 200
