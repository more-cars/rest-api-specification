@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4209
  Rule: Requests to create a VIDEO are accepted when the provided data is valid

    @TEST_MCA-4210 @implemented
    Scenario: Creating a VIDEO with valid data
      When the user creates a "VIDEO" "P1 vs F40" with the following data
        | key            | value       | datatype |
        | video_provider | youtube     | string   |
        | external_id    | NqsBncRslsg | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "VIDEO" "P1 vs F40"
