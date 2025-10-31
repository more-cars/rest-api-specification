@REQ_MCA-1555
Feature: Delete IMAGE-is-prime-image-of-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from IMAGES
  So I can clean up bad data or test data

  @RULE_MCA-1562
  Rule: Requests to delete the ›is-prime-image-of-node‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1563 @implemented
    Scenario: Trying to delete a non-existent ›is-prime-image-of-node‹ relationship
      Given there exists a "IMAGE" "BMW Logo"
      And there exists a "BRAND" "Ferrari"
      And there exists NO "is prime image of node" relationship between "BMW Logo" and "Ferrari"
      When the user deletes the "is prime image of node" relationship between "BMW Logo" and "Ferrari"
      Then the request should be rejected with status code 404
