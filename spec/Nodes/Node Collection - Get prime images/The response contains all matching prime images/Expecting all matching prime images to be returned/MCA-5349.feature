@REQ_MCA-5341
Feature: Node Collection - Get prime images
  As an API consumer\
  I want to be able to bulk-request the prime images for a bunch of nodes\
  So I don't have to request them one by one

  @RULE_MCA-5345
  Rule: The response contains all matching prime images

    @TEST_MCA-5349
    Scenario: Expecting all matching prime images to be returned
      Given there exists a "BRAND" "BMW"
      And there exists a "IMAGE" "BMW logo"
      And there exists a "has prime image" relationship between "BMW" and "BMW logo"
      And there exists a "COMPANY" "Ford Motor Company"
      And there exists a "IMAGE" "Ford headquarters"
      And there exists a "has prime image" relationship between "Ford Motor Company" and "Ford headquarters"
      When the user requests the prime images for the following nodes
        | node               |
        | BMW                |
        | Ford Motor Company |
      Then the response should contain the node "BMW logo"
      And the response should contain the node "Ford headquarters"
