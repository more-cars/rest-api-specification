@REQ_MCA-4250
Feature: Get all VIDEO-belongs-to-node Relationships

  @RULE_MCA-4251
  Rule: A list of all ›belongs-to-node‹ relationships is returned when the provided data is valid

    @TEST_MCA-4252
    Scenario: Requesting the ›belongs-to-node‹ relationships when at least one exists
      Given there exists a "VIDEO" "P1 vs F40"
      And there exist 3 "belongs to node" relationships for "P1 vs F40"
      When the user requests all "belongs to node" relationships for "P1 vs F40"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "belongs to node" relationships
