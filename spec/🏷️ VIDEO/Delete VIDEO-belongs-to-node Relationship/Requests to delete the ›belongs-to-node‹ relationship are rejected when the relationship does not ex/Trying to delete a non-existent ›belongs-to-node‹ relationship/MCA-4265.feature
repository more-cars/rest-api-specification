@REQ_MCA-4257
Feature: Delete VIDEO-belongs-to-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from VIDEOS
  So I can clean up bad data or test data

  @RULE_MCA-4264
  Rule: Requests to delete the ›belongs-to-node‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4265 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-node‹ relationship
      Given there exists a "VIDEO" "P1 vs F40"
      And there exists a "NODE" "Toyota Yaris"
      And there exists NO "belongs to node" relationship between "P1 vs F40" and "Toyota Yaris"
      When the user deletes the "belongs to node" relationship between "P1 vs F40" and "Toyota Yaris"
      Then the request should be rejected with status code 404
