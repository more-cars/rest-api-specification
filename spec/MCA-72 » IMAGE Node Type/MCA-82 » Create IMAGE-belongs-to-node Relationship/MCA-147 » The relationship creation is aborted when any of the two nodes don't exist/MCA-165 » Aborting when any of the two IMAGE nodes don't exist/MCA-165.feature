@REQ_MCA-82
Feature: Create IMAGE-belongs-to-node Relationship
  As an API contributor\
  I want to attach IMAGEs to CAR MODELs (and other types of nodes)\
  So I can create a visual representation of those nodes

  @RULE_MCA-147
  Rule: The relationship creation is aborted when any of the two nodes don't exist

    @TEST_MCA-165 @implemented
    Scenario Outline: Aborting when any of the two IMAGE nodes don't exist
      Given there exists a "<node type>" "<node>"
      And "IMAGE" "<image>" does NOT exist
      When the user creates a "belongs to node" relationship between "<image>" and "<node>"
      Then the request should be rejected with status code 404
      Given "<node type>" "<node>" does NOT exist
      And there exists an "IMAGE" "<image>"
      When the user creates a "belongs to node" relationship between "<image>" and "<node>"
      Then the request should be rejected with status code 404
      Given "<node type>" "<node>" does NOT exist
      And "IMAGE" "<image>" does NOT exist
      When the user creates a "belongs to node" relationship between "<image>" and "<node>"
      Then the request should be rejected with status code 404

      Examples:
        | node type | node     | image                          |
        | BRAND     | Ferrari  | ferrari-logo.jpg               |
        | CAR MODEL | Countach | lamborghini-countach-front.jpg |
