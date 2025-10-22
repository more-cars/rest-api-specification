@REQ_MCA-16
Feature: Providing every CORE information for a CAR MODEL
  As an API consumer\
  I want to get every core information for a car model\
  So I am not limited to its ID and name

  @RULE_MCA-27
  Rule: Invalid properties are ignored when creating a CAR MODEL

    @TEST_MCA-31 @implemented
    Scenario: Invalid properties should be ignored when creating a CAR MODEL
      When the user creates a "CAR MODEL" "Test Car" with the following data
        | key         | value    | datatype |
        | name        | Test Car | string   |
        | generattion | 3        | number   |
        | code        | ABC      | string   |
      Then the following keys in the response object should be of value null
        | key           |
        | generation    |
        | internal_code |
      And the response should NOT contain the following keys
        | key         |
        | generattion |
        | code        |
