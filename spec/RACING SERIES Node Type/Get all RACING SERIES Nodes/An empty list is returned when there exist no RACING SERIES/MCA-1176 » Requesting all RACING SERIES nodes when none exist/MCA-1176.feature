@REQ_MCA-1172
Feature: Get all RACING SERIES Nodes
  As an API consumer
  I want to be able to load all RACING SERIES at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-1175
  Rule: An empty list is returned when there exist no RACING SERIES

    @TEST_MCA-1176 @implemented
    Scenario: Requesting all RACING SERIES nodes when none exist
      Given there exist 0 "RACING SERIES"s
      When the user requests all "RACING SERIES"s
      Then the response should return a collection of 0 "RACING SERIES"s
      And the response should return with status code 200
