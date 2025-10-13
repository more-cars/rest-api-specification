@REQ_MCA-812
Feature: Delete IMAGE-belongs-to-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from IMAGES
  So I can clean up bad data or test data

  @RULE_MCA-819
  Rule: Requests to delete the ›belongs-to-node‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-820 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-node‹ relationship
      Given there exists an "IMAGE" "Ferrari HQ"
      And there exists a "BRAND" "Toyota"
      And there exists NO "belongs to node" relationship between "Ferrari HQ" and "Toyota"
      When the user deletes the "belongs to node" relationship between "Ferrari HQ" and "Toyota"
      Then the request should be rejected with status code 404
