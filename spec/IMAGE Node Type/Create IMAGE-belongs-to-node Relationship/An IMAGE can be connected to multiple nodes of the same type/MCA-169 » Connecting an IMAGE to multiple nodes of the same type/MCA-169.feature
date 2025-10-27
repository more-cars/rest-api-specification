@REQ_MCA-82
Feature: Create IMAGE-belongs-to-node Relationship
  As an API contributor\
  I want to attach IMAGEs to CAR MODELs (and other types of nodes)\
  So I can create a visual representation of those nodes

  @RULE_MCA-152
  Rule: An IMAGE can be connected to multiple nodes of the same type

    @TEST_MCA-169 @implemented
    Scenario Outline: Connecting an IMAGE to multiple nodes of the same type
      Given there exists an "IMAGE" "<image>"
      And there exists a "<node_type>" "<node_1>"
      And there exists a "<node_type>" "<node_2>"
      When the user creates a "belongs to node" relationship between "<image>" and "<node_1>"
      And the user creates a "belongs to node" relationship between "<image>" and "<node_2>"
      Then there should exist a "belongs to node" relationship between "<image>" and "<node_1>"
      And there should exist a "belongs to node" relationship between "<image>" and "<node_2>"

      Examples:
        | node_type | node_1   | node_2 | image                    |
        | BRAND     | Ferrari  | Toyota | brand-collection.jpg     |
        | CAR MODEL | Countach | Golf   | car-model-collection.jpg |
