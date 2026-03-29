@REQ_MCA-4239
Feature: Create VIDEO-belongs-to-node Relationship

  @RULE_MCA-4248
  Rule: Each VIDEO can be in a ›belongs-to-node‹ relationship with multiple NODES

    @TEST_MCA-4249
    Scenario: Creating multiple ›belongs-to-node‹ relationships
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "NODE" "McLaren P1"
      And there exists a "NODE" "McLaren P1 (Alternative)"
      When the user creates a "belongs to node" relationship between "P1 vs F40" and "McLaren P1"
      And the user creates a "belongs to node" relationship between "P1 vs F40" and "McLaren P1 (Alternative)"
      Then there should exist a "belongs to node" relationship between "P1 vs F40" and "McLaren P1"
      And there should exist a "belongs to node" relationship between "P1 vs F40" and "McLaren P1 (Alternative)"
