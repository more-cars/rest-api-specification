@REQ_MCA-1537
Feature: Create IMAGE-is-prime-image-of-node Relationship

  @RULE_MCA-1544
  Rule: The same ›is-prime-image-of-node‹ relationship between the same nodes can only be created once

    @TEST_MCA-1545
    Scenario: Trying to create the same ›is-prime-image-of-node‹ relationship again
      Given there exists a "IMAGE" "BMW Logo"
      And there exists a "NODE" "BMW"
      And there exists a "is prime image of node" relationship between "BMW Logo" and "BMW"
      When the user creates a "is prime image of node" relationship between "BMW Logo" and "BMW"
      Then the response should return with status code 304
