@REQ_MCA-1537
Feature: Create IMAGE-is-prime-image-of-node Relationship

  @RULE_MCA-1730
  Rule: An IMAGE cannot be in a ›is-prime-image-of-node‹ relationship with another IMAGE

    @TEST_MCA-2038 @implemented
    Scenario: Trying to create a ›is-prime-image-of-node‹ relationship between an IMAGE and another IMAGE
      Given there exists an "IMAGE" "front.jpg"
      And there exists an "IMAGE" "back.jpg"
      When the user creates a "is prime image of node" relationship between "front.jpg" and "back.jpg"
      Then the request should be rejected with status code 422
