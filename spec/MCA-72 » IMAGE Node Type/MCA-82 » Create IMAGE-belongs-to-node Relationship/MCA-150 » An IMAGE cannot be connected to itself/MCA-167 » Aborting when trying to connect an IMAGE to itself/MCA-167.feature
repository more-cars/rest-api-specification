@REQ_MCA-82
Feature: Create IMAGE-belongs-to-node Relationship
  As an API contributor\
  I want to attach IMAGEs to CAR MODELs (and other types of nodes)\
  So I can create a visual representation of those nodes

  @RULE_MCA-150
  Rule: An IMAGE cannot be connected to itself

    @TEST_MCA-167 @implemented
    Scenario: Aborting when trying to connect an IMAGE to itself
      Given there exists an "IMAGE" "logo.jpg"
      When the user creates a "belongs to node" relationship between "logo.jpg" and "logo.jpg"
      Then the request should be rejected with status code 422
