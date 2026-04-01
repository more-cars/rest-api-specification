@REQ_MCA-5341
Feature: Node Collection - Get prime images
  As an API consumer\
  I want to be able to bulk-request the prime images for a bunch of nodes\
  So I don't have to request them one by one

  @RULE_MCA-5343
  Rule: The user can provide multiple node IDs at once

    @TEST_MCA-5350
    Scenario: Requesting the prime image for a single node
      Given there exists a "BRAND" "BMW"
      When the user requests the prime images for the following nodes
        | node |
        | BMW  |
      Then the request should be confirmed with status code 200
