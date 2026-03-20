@REQ_MCA-3834
Feature: Get all MODEL CAR Nodes
  As an API consumer
  I want to be able to load all MODEL CARS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3837
  Rule: An empty list is returned when there exist no MODEL CARS

    @TEST_MCA-3838 @implemented
    Scenario: Requesting all MODEL CAR nodes when none exist
      Given there exist 0 "MODEL CAR"s
      When the user requests a "MODEL CAR" collection
      Then the response should return a collection of 0 "MODEL CAR"s
      And the response should return with status code 200
