@REQ_MCA-82
Feature: Create IMAGE-belongs-to-node Relationship
  As an API contributor\
  I want to attach IMAGEs to CAR MODELs (and other types of nodes)\
  So I can create a visual representation of those nodes

  @RULE_MCA-151
  Rule: An IMAGE cannot be connected to another IMAGE

    @TEST_MCA-168 @implemented
    Scenario: Aborting when trying to connect an IMAGE to another IMAGE
      Given there exists an "IMAGE" "front.jpg"
      And there exists an "IMAGE" "back.jpg"
      When the user creates a "belongs to node" relationship between "front.jpg" and "back.jpg"
      Then the request should be rejected with status code 422
