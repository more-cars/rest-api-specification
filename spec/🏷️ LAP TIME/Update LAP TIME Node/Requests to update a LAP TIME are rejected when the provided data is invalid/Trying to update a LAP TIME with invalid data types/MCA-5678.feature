@REQ_MCA-5670
Feature: Update LAP TIME Node
  As an API contributor
  I want to be able to update a LAP TIME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5677
  Rule: Requests to update a LAP TIME are rejected when the provided data is invalid

    @TEST_MCA-5678 @implemented
    Scenario: Trying to update a LAP TIME with invalid data types
      Given there exists a "LAP TIME" "Fastest lap"
      When the user updates the node "Fastest lap" with the following data
        | key         | value |
        | time        | 1234  |
        | driver_name | 1234  |
        | date        | 1234  |
      Then the request should be rejected with status code 400
