@REQ_MCA-154
Feature: Get all IMAGE-belongs-to-node Relationships
  As an API contributor\
  I want to find out whether an IMAGE is already connected to other nodes\
  So I can reduce the number of orphans in the database

  @RULE_MCA-156
  Rule: When there exist nodes that are connected to the IMAGE then those relationships are returned

    @TEST_MCA-171 @implemented
    Scenario: Requesting all relationships that exist for the IMAGE
      Given there exists an "IMAGE" "corvette.jpg"
      And there exist 3 "belongs to node" relationships for "corvette.jpg"
      When the user requests all "belongs to node" relationships for "corvette.jpg"
      Then the response should return with status code 200
      And the response should return a collection with 3 "belongs to node" relationships
