@REQ_MCA-4266
Feature: Create VIDEO-is-main-video-of-node Relationship

  @RULE_MCA-4273
  Rule: The same ›is-main-video-of-node‹ relationship between the same nodes can only be created once

    @TEST_MCA-4274
    Scenario: Trying to create the same ›is-main-video-of-node‹ relationship again
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "NODE" "McLaren P1"
      And there exists a "is main video of node" relationship between "P1 vs F40" and "McLaren P1"
      When the user creates a "is main video of node" relationship between "P1 vs F40" and "McLaren P1"
      Then the response should return with status code 304
