@REQ_MCA-1548
Feature: Get all IMAGE-is-prime-image-of-node Relationships

  @RULE_MCA-1553
  Rule: A request to fetch all ›is-prime-image-of-node‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1554
    Scenario: Trying to fetch the ›is-prime-image-of-node‹ relationships with an invalid IMAGE ID
      Given "IMAGE" "BMW Logo" does NOT exist
      When the user requests all "is prime image of node" relationships for "BMW Logo"
      Then the request should be rejected with status code 404
