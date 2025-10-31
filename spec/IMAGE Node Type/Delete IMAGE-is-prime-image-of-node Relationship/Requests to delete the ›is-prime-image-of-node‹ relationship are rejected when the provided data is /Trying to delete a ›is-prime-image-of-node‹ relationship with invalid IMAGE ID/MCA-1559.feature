@REQ_MCA-1555
Feature: Delete IMAGE-is-prime-image-of-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from IMAGES
  So I can clean up bad data or test data

  @RULE_MCA-1558
  Rule: Requests to delete the ›is-prime-image-of-node‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1559 @implemented
    Scenario: Trying to delete a ›is-prime-image-of-node‹ relationship with invalid IMAGE ID
      Given "IMAGE" "BMW Logo" does NOT exist
      And there exists a "BRAND" "Ferrari"
      When the user deletes the "is prime image of node" relationship between "BMW Logo" and "Ferrari"
      Then the request should be rejected with status code 404
