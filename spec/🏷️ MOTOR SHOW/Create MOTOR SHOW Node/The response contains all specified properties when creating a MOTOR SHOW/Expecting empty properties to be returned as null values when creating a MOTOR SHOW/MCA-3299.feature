@REQ_MCA-3291
Feature: Create MOTOR SHOW Node
  As an API contributor
  I want to be able to create MOTOR SHOWS
  So I can fill gaps in the database

  @RULE_MCA-3297
  Rule: The response contains all specified properties when creating a MOTOR SHOW

    @TEST_MCA-3299 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a MOTOR SHOW
      When the user creates a "MOTOR SHOW" "IAA 2017" with the following data
        | key  | value              |
        | name | 2017 IAA Frankfurt |
      Then the response should contain the following properties
        | key             | value              |
        | name            | 2017 IAA Frankfurt |
        | date_from       |                    |
        | date_until      |                    |
        | location        |                    |
        | target_audience |                    |
        | focus           |                    |
        | country_code    |                    |
