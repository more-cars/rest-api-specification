@REQ_MCA-1555
Feature: Delete IMAGE-is-prime-image-of-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from IMAGES
  So I can clean up bad data or test data

  @RULE_MCA-1556
  Rule: The ›is-prime-image-of-node‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1557 @implemented
    Scenario: Deleting the ›is-prime-image-of-node‹ relationship when it actually exists
      Given there exists a "IMAGE" "BMW Logo"
      And there exists a "BRAND" "Ferrari"
      And there exists a "is prime image of node" relationship "R" between "BMW Logo" and "Ferrari"
      When the user deletes the "is prime image of node" relationship between "BMW Logo" and "Ferrari"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
