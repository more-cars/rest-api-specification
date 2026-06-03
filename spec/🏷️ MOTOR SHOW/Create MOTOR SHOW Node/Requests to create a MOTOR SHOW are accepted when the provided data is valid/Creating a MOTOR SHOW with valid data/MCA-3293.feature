@REQ_MCA-3291
Feature: Create MOTOR SHOW Node
  As an API contributor
  I want to be able to create MOTOR SHOWS
  So I can fill gaps in the database

  @RULE_MCA-3292
  Rule: Requests to create a MOTOR SHOW are accepted when the provided data is valid

    @TEST_MCA-3293 @implemented
    Scenario: Creating a MOTOR SHOW with valid data
      When the user creates a "MOTOR SHOW" "IAA 2017" with the following data
        | key             | value              |
        | name            | 2017 IAA Frankfurt |
        | date_from       | 2017-09-14         |
        | date_until      | 2017-09-24         |
        | location        | Frankfurt          |
        | target_audience | international      |
        | focus           | new-cars           |
        | country_code    | DE                 |
      Then the request should be confirmed with status code 201
      And the response should return the "MOTOR SHOW" "IAA 2017"
