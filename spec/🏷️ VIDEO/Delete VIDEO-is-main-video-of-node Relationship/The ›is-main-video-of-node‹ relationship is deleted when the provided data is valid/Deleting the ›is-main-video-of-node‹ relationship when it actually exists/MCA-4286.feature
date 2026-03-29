@REQ_MCA-4284
Feature: Delete VIDEO-is-main-video-of-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from VIDEOS
  So I can clean up bad data or test data

  @RULE_MCA-4285
  Rule: The ›is-main-video-of-node‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4286
    Scenario: Deleting the ›is-main-video-of-node‹ relationship when it actually exists
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "NODE" "Renault Twingo"
      And there exists a "is main video of node" relationship "R" between "P1 vs F40" and "Renault Twingo"
      When the user deletes the "is main video of node" relationship between "P1 vs F40" and "Renault Twingo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
