@REQ_MCA-1537
Feature: Create IMAGE-is-prime-image-of-node Relationship

  @RULE_MCA-1546
  Rule: Each IMAGE can be in a ›is-prime-image-of-node‹ relationship with multiple NODES of the same type

    @TEST_MCA-1547 @implemented
    Scenario: Creating multiple ›is-prime-image-of-node‹ relationships with NODES of same type
      Given there exists a "IMAGE" "BMW Logo"
      And there exists a "BRAND" "BMW"
      And there exists a "BRAND" "BMW (Alternative)"
      When the user creates a "is prime image of node" relationship between "BMW Logo" and "BMW"
      And the user creates a "is prime image of node" relationship between "BMW Logo" and "BMW (Alternative)"
      Then there should exist a "is prime image of node" relationship between "BMW Logo" and "BMW"
      And there should exist a "is prime image of node" relationship between "BMW Logo" and "BMW (Alternative)"
