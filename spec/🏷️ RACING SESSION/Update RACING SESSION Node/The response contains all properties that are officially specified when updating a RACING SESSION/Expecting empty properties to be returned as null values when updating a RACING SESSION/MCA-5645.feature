@REQ_MCA-5634
Feature: Update RACING SESSION Node
  As an API contributor
  I want to be able to update a RACING SESSION
  So I can add missing information or fix incorrect data

  @RULE_MCA-5643
  Rule: The response contains all properties that are officially specified when updating a RACING SESSION

    @TEST_MCA-5645 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a RACING SESSION
      Given there exists a "RACING SESSION" "Qualifying"
      When the user updates the node "Qualifying" with the following data
        | key           | value        |
        | name          | Grand Prix_2 |
        | start_date    |              |
        | start_time    |              |
        | duration      |              |
        | duration_unit |              |
        | distance      |              |
        | distance_unit |              |
      Then the response should contain the following properties
        | key           | value        |
        | name          | Grand Prix_2 |
        | start_date    |              |
        | start_time    |              |
        | duration      |              |
        | duration_unit |              |
        | distance      |              |
        | distance_unit |              |
