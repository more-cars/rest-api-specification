@REQ_MCA-3959
Feature: Get all MODEL CAR BRAND Nodes
  As an API consumer
  I want to be able to load all MODEL CAR BRANDS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-3960
  Rule: Requesting all nodes returns a list of MODEL CAR BRANDS

    @TEST_MCA-3961 @implemented
    Scenario: Requesting all MODEL CAR BRAND nodes when at least 1 exists
      Given there exist 3 "MODEL CAR BRAND"s
      When the user requests a "MODEL CAR BRAND" collection
      Then the response should return a collection of 3 "MODEL CAR BRAND"s
      And the response should return with status code 200
