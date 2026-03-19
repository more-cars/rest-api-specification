@REQ_MCA-3959
Feature: Get all MODEL CAR BRAND Nodes
  As an API consumer
  I want to be able to load all MODEL CAR BRANDS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3962
  Rule: An empty list is returned when there exist no MODEL CAR BRANDS

    @TEST_MCA-3963
    Scenario: Requesting all MODEL CAR BRAND nodes when none exist
      Given there exist 0 "MODEL CAR BRAND"s
      When the user requests a "MODEL CAR BRAND" collection
      Then the response should return a collection of 0 "MODEL CAR BRAND"s
      And the response should return with status code 200
