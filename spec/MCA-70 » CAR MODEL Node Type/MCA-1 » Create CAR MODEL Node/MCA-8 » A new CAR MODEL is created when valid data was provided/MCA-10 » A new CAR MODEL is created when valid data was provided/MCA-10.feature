@REQ_MCA-1
Feature: Create CAR MODEL Node
  As an API contributor\
  I want to be able to create car models\
  So I can fill gaps in the database

  @RULE_MCA-8
  Rule: A new CAR MODEL is created when valid data was provided

    @TEST_MCA-10 @implemented
    Scenario: A new CAR MODEL is created when valid data was provided
      When the user creates a "CAR MODEL" "Testarossa" with the following data
        | key  | value      | datatype |
        | name | Testarossa | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "CAR MODEL" "Testarossa"
      When the user requests the "CAR MODEL" "Testarossa"
      Then the response should return the "CAR MODEL" "Testarossa"
