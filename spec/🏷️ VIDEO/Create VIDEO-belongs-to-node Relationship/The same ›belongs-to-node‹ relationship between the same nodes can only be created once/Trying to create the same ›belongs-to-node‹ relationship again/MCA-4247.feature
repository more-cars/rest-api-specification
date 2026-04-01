@REQ_MCA-4239
Feature: Create VIDEO-belongs-to-node Relationship

  @RULE_MCA-4246
  Rule: The same ›belongs-to-node‹ relationship between the same nodes can only be created once

    @TEST_MCA-4247 @implemented
    Scenario: Trying to create the same ›belongs-to-node‹ relationship again
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "NODE" "McLaren P1"
      And there exists a "belongs to node" relationship between "P1 vs F40" and "McLaren P1"
      When the user creates a "belongs to node" relationship between "P1 vs F40" and "McLaren P1"
      Then the response should return with status code 304
