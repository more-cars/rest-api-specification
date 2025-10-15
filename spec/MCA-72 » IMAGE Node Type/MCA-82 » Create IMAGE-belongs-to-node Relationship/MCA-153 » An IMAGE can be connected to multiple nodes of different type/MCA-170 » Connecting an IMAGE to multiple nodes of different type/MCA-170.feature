@REQ_MCA-82
Feature: Create IMAGE-belongs-to-node Relationship
  As an API contributor\
  I want to attach IMAGEs to CAR MODELs (and other types of nodes)\
  So I can create a visual representation of those nodes

  @RULE_MCA-153
  Rule: An IMAGE can be connected to multiple nodes of different type

    @TEST_MCA-170 @deactivated @implemented
    Scenario: Connecting an IMAGE to multiple nodes of different type
      Given there exists an "IMAGE" "porsche-cayman.jpg"
      And there exists a "BRAND" "Porsche"
      And there exists a "CAR MODEL" "Cayman"
      When the user creates a "belongs to node" relationship between "porsche-cayman.jpg" and "Porsche"
      And the user creates a "belongs to node" relationship between "porsche-cayman.jpg" and "Cayman"
      Then there should exist a "belongs to node" relationship between "porsche-cayman.jpg" and "Porsche"
      And there should exist a "belongs to node" relationship between "porsche-cayman.jpg" and "Cayman"
