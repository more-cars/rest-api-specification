@REQ_MCA-5341
Feature: Node Collection - Get prime images
  As an API consumer\
  I want to be able to bulk-request the prime images for a bunch of nodes\
  So I don't have to request them one by one

  @RULE_MCA-5342
  Rule: An empty list is returned when none of the nodes has a prime image

    @TEST_MCA-5346
    Scenario: Expecting an empty result when none of the nodes has a prime image
      Given there exists a "BRAND" "BMW"
      And there exists a "COMPANY" "Ford Motor Company"
      When the user requests the prime images for the following nodes
        | node               |
        | BMW                |
        | Ford Motor Company |
      Then the response should return an empty list
