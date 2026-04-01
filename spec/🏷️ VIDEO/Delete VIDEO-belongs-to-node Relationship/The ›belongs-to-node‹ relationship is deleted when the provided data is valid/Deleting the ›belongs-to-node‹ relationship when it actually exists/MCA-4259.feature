@REQ_MCA-4257
Feature: Delete VIDEO-belongs-to-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from VIDEOS
  So I can clean up bad data or test data

  @RULE_MCA-4258
  Rule: The ›belongs-to-node‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4259 @implemented
    Scenario: Deleting the ›belongs-to-node‹ relationship when it actually exists
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "NODE" "Toyota Yaris"
      And there exists a "belongs to node" relationship "R" between "P1 vs F40" and "Toyota Yaris"
      When the user deletes the "belongs to node" relationship between "P1 vs F40" and "Toyota Yaris"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
