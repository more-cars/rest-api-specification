@REQ_MCA-97
Feature: Providing IDs for all RELATIONSHIPs
  As an API consumer\
  I need all RELATIONSHIPs to have an IDENTIFIER\
  So I can find the RELATIONSHIPs again to reference them in different contexts

  @RULE_MCA-104
  Rule: Each requested relationship returns with a valid ID

    @TEST_MCA-134 @implemented
    Scenario: Requesting a collections of relationships returns with valid IDs
      Given there exists a "COMPANY" "BMW AG"
      And there exist 3 "has brand" relationships for "BMW AG"
      When the user requests all "has brand" relationships for "BMW AG"
      Then the property "relationship_id" of all items in the response should be a number greater than 0
      And the property "relationship_id" of all items in the response should be a number lesser than 4294967296
