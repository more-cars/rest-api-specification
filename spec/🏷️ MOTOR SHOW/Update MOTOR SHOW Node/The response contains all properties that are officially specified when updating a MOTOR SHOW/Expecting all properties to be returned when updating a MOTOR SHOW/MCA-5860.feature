@REQ_MCA-5850
Feature: Update MOTOR SHOW Node
  As an API contributor
  I want to be able to update a MOTOR SHOW
  So I can add missing information or fix incorrect data

  @RULE_MCA-5859
  Rule: The response contains all properties that are officially specified when updating a MOTOR SHOW

    @TEST_MCA-5860 @implemented
    Scenario: Expecting all properties to be returned when updating a MOTOR SHOW
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user updates the node "IAA Frankfurt" with the following data
        | key             | value                |
        | name            | 2017 IAA Frankfurt_2 |
        | date_from       | 2017-09-14_2         |
        | date_until      | 2017-09-24_2         |
        | location        | Frankfurt_2          |
        | target_audience | international_2      |
        | focus           | new cars_2           |
        | country_code    | DE_2                 |
      Then the request should be confirmed with status code 201
      And the response should contain the following properties
        | key             | value                |
        | name            | 2017 IAA Frankfurt_2 |
        | date_from       | 2017-09-14_2         |
        | date_until      | 2017-09-24_2         |
        | location        | Frankfurt_2          |
        | target_audience | international_2      |
        | focus           | new cars_2           |
        | country_code    | DE_2                 |
