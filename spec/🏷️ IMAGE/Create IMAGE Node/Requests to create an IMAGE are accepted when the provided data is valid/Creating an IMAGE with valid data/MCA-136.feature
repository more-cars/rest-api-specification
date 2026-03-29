@REQ_MCA-75
Feature: Create IMAGE Node
  As an API contributor\
  I want to be able to create IMAGE nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-110
  Rule: Requests to create an IMAGE are accepted when the provided data is valid

    @TEST_MCA-136 @implemented
    Scenario: Creating an IMAGE with valid data
      When the user creates a "IMAGE" "Ferrari logo" with the following data
        | key            | value     | datatype |
        | image_provider | something | string   |
        | external_id    | A12345    | string   |
      Then the request should be confirmed with status code 201
      And the response should contain an ID
      And the response should return the "IMAGE" "Ferrari logo"
