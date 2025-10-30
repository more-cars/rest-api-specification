@REQ_MCA-1537
Feature: Create IMAGE-is-prime-image-of-node Relationship

  @RULE_MCA-1732
  Rule: Each IMAGE can be in a ›is-prime-image-of-node‹ relationship with multiple NODES of different type

    @TEST_MCA-2036 @implemented
    Scenario: Creating multiple ›is-prime-image-of-node‹ relationships with NODES of different type
      Given there exists an "IMAGE" "porsche-cayman.jpg"
      And there exists a "BRAND" "Porsche"
      And there exists a "CAR MODEL" "Cayman"
      When the user creates a "is prime image of node" relationship between "porsche-cayman.jpg" and "Porsche"
      And the user creates a "is prime image of node" relationship between "porsche-cayman.jpg" and "Cayman"
      Then there should exist a "is prime image of node" relationship between "porsche-cayman.jpg" and "Porsche"
      And there should exist a "is prime image of node" relationship between "porsche-cayman.jpg" and "Cayman"
