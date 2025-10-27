@REQ_MCA-812
Feature: Delete IMAGE-belongs-to-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from IMAGES
  So I can clean up bad data or test data

  @RULE_MCA-813
  Rule: The ›belongs-to-node‹ relationship is deleted when the provided data is valid

    @TEST_MCA-814 @implemented
    Scenario: Deleting the ›belongs-to-node‹ relationship when it actually exists
      Given there exists an "IMAGE" "Ferrari HQ"
      And there exists a "BRAND" "Toyota"
      And there exists a "belongs to node" relationship "R" between "Ferrari HQ" and "Toyota"
      When the user deletes the "belongs to node" relationship between "Ferrari HQ" and "Toyota"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
