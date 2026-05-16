@REQ_MCA-5850
Feature: Update MOTOR SHOW Node
  As an API contributor
  I want to be able to update a MOTOR SHOW
  So I can add missing information or fix incorrect data

  @RULE_MCA-5859
  Rule: The response contains all properties that are officially specified when updating a MOTOR SHOW

    @TEST_MCA-5861 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a MOTOR SHOW
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user updates the node "IAA Frankfurt" with the following data
        | key             | value                |
        | name            | 2017 IAA Frankfurt_2 |
        | date_from       |                      |
        | date_until      |                      |
        | location        |                      |
        | target_audience |                      |
        | focus           |                      |
        | country_code    |                      |
      Then the response should contain the following properties
        | key             | value                |
        | name            | 2017 IAA Frankfurt_2 |
        | date_from       |                      |
        | date_until      |                      |
        | location        |                      |
        | target_audience |                      |
        | focus           |                      |
        | country_code    |                      |
