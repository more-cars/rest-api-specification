@REQ_MCA-812
Feature: Delete IMAGE-belongs-to-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from IMAGES
  So I can clean up bad data or test data

  @RULE_MCA-815
  Rule: Requests to delete the ›belongs-to-node‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-817 @implemented
    Scenario: Trying to delete a ›belongs-to-node‹ relationship with invalid NODE ID
      Given there exists an "IMAGE" "Ferrari HQ"
      And "BRAND" "Toyota" does NOT exist
      When the user deletes the "belongs to node" relationship between "Ferrari HQ" and "Toyota"
      Then the request should be rejected with status code 404
