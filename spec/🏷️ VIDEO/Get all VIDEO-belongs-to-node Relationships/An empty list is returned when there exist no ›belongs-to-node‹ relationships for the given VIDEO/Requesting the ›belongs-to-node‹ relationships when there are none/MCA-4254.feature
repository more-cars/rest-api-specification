@REQ_MCA-4250
Feature: Get all VIDEO-belongs-to-node Relationships

  @RULE_MCA-4253
  Rule: An empty list is returned when there exist no ›belongs-to-node‹ relationships for the given VIDEO

    @TEST_MCA-4254 @implemented
    Scenario: Requesting the ›belongs-to-node‹ relationships when there are none
      Given there exists a "VIDEO" "P1 vs F40"
      And there exist 0 "belongs to node" relationships for "P1 vs F40"
      When the user requests all "belongs to node" relationships for "P1 vs F40"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
