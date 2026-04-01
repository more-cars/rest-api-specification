@REQ_MCA-4266
Feature: Create VIDEO-is-main-video-of-node Relationship

  @RULE_MCA-4275
  Rule: Each VIDEO can be in a ›is-main-video-of-node‹ relationship with multiple NODES

    @TEST_MCA-4276 @implemented
    Scenario: Creating multiple ›is-main-video-of-node‹ relationships
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "NODE" "McLaren P1"
      And there exists a "NODE" "McLaren P1 (Alternative)"
      When the user creates a "is main video of node" relationship between "P1 vs F40" and "McLaren P1"
      And the user creates a "is main video of node" relationship between "P1 vs F40" and "McLaren P1 (Alternative)"
      Then there should exist a "is main video of node" relationship between "P1 vs F40" and "McLaren P1"
      And there should exist a "is main video of node" relationship between "P1 vs F40" and "McLaren P1 (Alternative)"
