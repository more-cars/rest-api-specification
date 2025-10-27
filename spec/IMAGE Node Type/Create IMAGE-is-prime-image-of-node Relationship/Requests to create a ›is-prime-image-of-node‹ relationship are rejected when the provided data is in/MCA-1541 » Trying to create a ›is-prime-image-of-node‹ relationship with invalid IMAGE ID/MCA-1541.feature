@REQ_MCA-1537
Feature: Create IMAGE-is-prime-image-of-node Relationship

  @RULE_MCA-1540
  Rule: Requests to create a ›is-prime-image-of-node‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1541
    Scenario: Trying to create a ›is-prime-image-of-node‹ relationship with invalid IMAGE ID
      Given "IMAGE" "BMW Logo" does NOT exist
      And there exists a "NODE" "BMW"
      When the user creates a "is prime image of node" relationship between "BMW Logo" and "BMW"
      Then the request should be rejected with status code 404
