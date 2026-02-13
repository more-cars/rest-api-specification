@REQ_MCA-2509
Feature: Get all GAMING PLATFORM Nodes
  As an API consumer
  I want to be able to load all GAMING PLATFORMS at once
  So I can find out which even exist
  And to be able to compare and analyze them without having to load them all individually

  @RULE_MCA-2512
  Rule: An empty list is returned when there exist no GAMING PLATFORMS

    @TEST_MCA-2513 @implemented
    Scenario: Requesting all GAMING PLATFORM nodes when none exist
      Given there exist 0 "GAMING PLATFORM"s
      When the user requests all "GAMING PLATFORM"s
      Then the response should return a collection of 0 "GAMING PLATFORM"s
      And the response should return with status code 200
