@REQ_MCA-5923
Feature: Get all BOOK Nodes
  As an API consumer
  I want to be able to load all BOOKS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-5924
  Rule: Requesting all nodes returns a list of BOOKS

    @TEST_MCA-5925 @implemented
    Scenario: Requesting all BOOK nodes when at least 1 exists
      Given there exist 3 "BOOK"s
      When the user requests a "BOOK" collection
      Then the response should return a collection of 3 "BOOK"s
      And the response should return with status code 200
