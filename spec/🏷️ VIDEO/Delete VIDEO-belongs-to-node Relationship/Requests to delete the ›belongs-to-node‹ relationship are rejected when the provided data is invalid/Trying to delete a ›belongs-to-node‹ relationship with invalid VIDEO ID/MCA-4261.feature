@REQ_MCA-4257
Feature: Delete VIDEO-belongs-to-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from VIDEOS
  So I can clean up bad data or test data

  @RULE_MCA-4260
  Rule: Requests to delete the ›belongs-to-node‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4261
    Scenario: Trying to delete a ›belongs-to-node‹ relationship with invalid VIDEO ID
      Given "VIDEO" "P1 vs F40" does NOT exist
      And there exists a "NODE" "Toyota Yaris"
      When the user deletes the "belongs to node" relationship between "P1 vs F40" and "Toyota Yaris"
      Then the request should be rejected with status code 404
