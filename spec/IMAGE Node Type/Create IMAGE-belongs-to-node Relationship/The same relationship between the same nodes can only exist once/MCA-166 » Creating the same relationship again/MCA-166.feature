@REQ_MCA-82
Feature: Create IMAGE-belongs-to-node Relationship
  As an API contributor\
  I want to attach IMAGEs to CAR MODELs (and other types of nodes)\
  So I can create a visual representation of those nodes

  @RULE_MCA-149
  Rule: The same relationship between the same nodes can only exist once

    @TEST_MCA-166 @implemented
    Scenario Outline: Creating the same relationship again
      Given there exists an "IMAGE" "<image>"
      And there exists a "<node type>" "<node>"
      And there exists a "belongs to node" relationship between "<image>" and "<node>"
      When the user creates a "belongs to node" relationship between "<image>" and "<node>"
      Then the response should return with status code 304

      Examples:
        | node type | node     | image                          |
        | COMPANY   | VW AG    | vw-hq.jpg                      |
        | BRAND     | Ferrari  | ferrari-logo.jpg               |
        | CAR MODEL | Countach | lamborghini-countach-front.jpg |
