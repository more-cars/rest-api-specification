@REQ_MCA-75
Feature: Create IMAGE Node
  As an API contributor\
  I want to be able to create IMAGE nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-112
  Rule: Unknown properties are ignored when creating an IMAGE

    @TEST_MCA-135 @implemented
    Scenario: Expecting unknown properties to be ignored when creating an IMAGE
      When the user creates a "IMAGE" "Ferrari logo" with the following data
        | key            | value     |
        | image_provider | wikimedia |
        | external_id    | WM123456  |
        | my_property    | ABC       |
      Then the response should contain the following properties
        | key            | value     |
        | image_provider | wikimedia |
        | external_id    | WM123456  |
      But the response should NOT contain the following keys
        | key         |
        | my_property |
