@REQ_MCA-154
Feature: Get all IMAGE-belongs-to-node Relationships
  As an API contributor\
  I want to find out whether an IMAGE is already connected to other nodes\
  So I can reduce the number of orphans in the database

  @RULE_MCA-157
  Rule: When the IMAGE is not connected to any node then an empty list is returned

    @TEST_MCA-172 @implemented
    Scenario: Expecting an empty list when the IMAGE is not connected to any node
      Given there exists an "IMAGE" "cadillac.jpg"
      And there exist 0 "belongs to node" relationships for "cadillac.jpg"
      When the user requests all "belongs to node" relationships for "cadillac.jpg"
      Then the response should return with status code 200
      And the response should return a collection with 0 relationships
