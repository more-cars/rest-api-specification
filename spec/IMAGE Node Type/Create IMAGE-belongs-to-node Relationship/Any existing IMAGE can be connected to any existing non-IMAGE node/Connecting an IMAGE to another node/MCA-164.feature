@REQ_MCA-82
Feature: Create IMAGE-belongs-to-node Relationship
  As an API contributor\
  I want to attach IMAGEs to CAR MODELs (and other types of nodes)\
  So I can create a visual representation of those nodes

  @RULE_MCA-146
  Rule: Any existing IMAGE can be connected to any existing non-IMAGE node

    @TEST_MCA-164 @implemented
    Scenario Outline: Connecting an IMAGE to another node
      Given there exists a "<node_type>" "<node>"
      And there exists an "IMAGE" "<image>"
      When the user creates a "belongs to node" relationship between "<image>" and "<node>"
      Then the request should be confirmed with status code 201

      Examples:
        | node_type | node     | image                          |
        | BRAND     | Ferrari  | ferrari-logo.jpg               |
        | CAR MODEL | Countach | lamborghini-countach-front.jpg |
