@REQ_MCA-3291
Feature: Create MOTOR SHOW Node
  As an API contributor
  I want to be able to create MOTOR SHOWS
  So I can fill gaps in the database

  @RULE_MCA-3300
  Rule: Unknown properties are ignored when creating a MOTOR SHOW

    @TEST_MCA-3301 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a MOTOR SHOW
      When the user creates a "MOTOR SHOW" "IAA 2017" with the following data
        | key             | value              |
        | name            | 2017 IAA Frankfurt |
        | date_from       | 2017-09-14         |
        | date_until      | 2017-09-24         |
        | location        | Frankfurt          |
        | target_audience | international      |
        | focus           | new-cars           |
        | country_code    | DE                 |
        | thimbleweed     | park               |
      Then the response should contain the following properties
        | key             | value              |
        | name            | 2017 IAA Frankfurt |
        | date_from       | 2017-09-14         |
        | date_until      | 2017-09-24         |
        | location        | Frankfurt          |
        | target_audience | international      |
        | focus           | new-cars           |
        | country_code    | DE                 |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
