@REQ_MCA-5670
Feature: Update LAP TIME Node
  As an API contributor
  I want to be able to update a LAP TIME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5671
  Rule: Requests to update a LAP TIME are accepted when the provided data is valid

    @TEST_MCA-5672 @implemented
    Scenario: Updating a LAP TIME with valid data
      Given there exists a "LAP TIME" "Fastest lap"
      When the user updates the node "Fastest lap" with the following data
        | key         | value          |
        | time        | PT1M33.294S_2  |
        | driver_name | Klaus Ludwig_2 |
        | date        | 1996-08-03_2   |
      Then the request should be confirmed with status code 200
