@REQ_MCA-1537
Feature: Create IMAGE-is-prime-image-of-node Relationship

  @RULE_MCA-1729
  Rule: An IMAGE cannot be in a ›is-prime-image-of-node‹ relationship with itself

    @TEST_MCA-2037 @implemented
    Scenario: Trying to create a ›is-prime-image-of-node‹ relationship between the IMAGE and itself
      Given there exists an "IMAGE" "logo.jpg"
      When the user creates a "is prime image of node" relationship between "logo.jpg" and "logo.jpg"
      Then the request should be rejected with status code 422
