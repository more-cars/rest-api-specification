@REQ_MCA-5634
Feature: Update RACING SESSION Node
  As an API contributor
  I want to be able to update a RACING SESSION
  So I can add missing information or fix incorrect data

  @RULE_MCA-5643
  Rule: The response contains all properties that are officially specified when updating a RACING SESSION

    @TEST_MCA-5644 @implemented
    Scenario: Expecting all properties to be returned when updating a RACING SESSION
      Given there exists a "RACING SESSION" "Qualifying"
      When the user updates the node "Qualifying" with the following data
        | key           | value        |
        | name          | Grand Prix_2 |
        | start_date    | 2025-05-25_2 |
        | start_time    | 15:00_2      |
        | duration      | 122          |
        | duration_unit | min_2        |
        | distance      | 63           |
        | distance_unit | laps_2       |
      Then the request should be confirmed with status code 201
      And the response should contain the following properties
        | key           | value        |
        | name          | Grand Prix_2 |
        | start_date    | 2025-05-25_2 |
        | start_time    | 15:00_2      |
        | duration      | 122          |
        | duration_unit | min_2        |
        | distance      | 63           |
        | distance_unit | laps_2       |
