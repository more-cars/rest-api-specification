@REQ_MCA-5850
Feature: Update MOTOR SHOW Node
  As an API contributor
  I want to be able to update a MOTOR SHOW
  So I can add missing information or fix incorrect data

  @RULE_MCA-5851
  Rule: Requests to update a MOTOR SHOW are accepted when the provided data is valid

    @TEST_MCA-5852 @implemented
    Scenario: Updating a MOTOR SHOW with valid data
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user updates the node "IAA Frankfurt" with the following data
        | key             | value                |
        | name            | 2017 IAA Frankfurt_2 |
        | date_from       | 2017-09-14           |
        | date_until      | 2017-09-24           |
        | location        | Frankfurt_2          |
        | target_audience | international        |
        | focus           | new_cars             |
        | country_code    | AT                   |
      Then the request should be confirmed with status code 200
