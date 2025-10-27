@REQ_MCA-1537
Feature: Create IMAGE-is-prime-image-of-node Relationship

  @RULE_MCA-1540
  Rule: Requests to create a ›is-prime-image-of-node‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1542
    Scenario: Trying to create a ›is-prime-image-of-node‹ relationship with invalid NODE ID
      Given there exists a "IMAGE" "BMW Logo"
      And "NODE" "BMW" does NOT exist
      When the user creates a "is prime image of node" relationship between "BMW Logo" and "BMW"
      Then the request should be rejected with status code 404
