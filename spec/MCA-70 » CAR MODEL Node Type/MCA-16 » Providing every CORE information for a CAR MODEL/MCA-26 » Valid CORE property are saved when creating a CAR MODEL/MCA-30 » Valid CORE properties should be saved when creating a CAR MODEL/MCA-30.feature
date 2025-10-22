@REQ_MCA-16
Feature: Providing every CORE information for a CAR MODEL
  As an API consumer\
  I want to get every core information for a car model\
  So I am not limited to its ID and name

  @RULE_MCA-26
  Rule: Valid CORE property are saved when creating a CAR MODEL

    @TEST_MCA-30 @implemented
    Scenario: Valid CORE properties should be saved when creating a CAR MODEL
      When the user creates a "CAR MODEL" "Test Car" with the following data
        | key              | value    | datatype |
        | name             | Test Car | string   |
        | built_from       | 1988     | number   |
        | built_to         | 1999     | number   |
        | generation       | 1        | number   |
        | internal_code    | F99      | string   |
        | total_production | 222222   | number   |
      Then the response should contain the following data
        | key              | value    | datatype |
        | name             | Test Car | string   |
        | built_from       | 1988     | number   |
        | built_to         | 1999     | number   |
        | generation       | 1        | number   |
        | internal_code    | F99      | string   |
        | total_production | 222222   | number   |
