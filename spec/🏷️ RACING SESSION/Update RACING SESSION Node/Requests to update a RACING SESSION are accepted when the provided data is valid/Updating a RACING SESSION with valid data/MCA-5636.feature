@REQ_MCA-5634
Feature: Update RACING SESSION Node
  As an API contributor
  I want to be able to update a RACING SESSION
  So I can add missing information or fix incorrect data

  @RULE_MCA-5635
  Rule: Requests to update a RACING SESSION are accepted when the provided data is valid

    @TEST_MCA-5636 @implemented
    Scenario: Updating a RACING SESSION with valid data
      Given there exists a "RACING SESSION" "Qualifying"
      When the user updates the node "Qualifying" with the following data
        | key           | value        |
        | name          | Grand Prix_2 |
        | start_date    | 2025-05-25   |
        | start_time    | 15:00        |
        | duration      | PT122M       |
        | distance      | 63           |
        | distance_unit | laps         |
      Then the request should be confirmed with status code 200
