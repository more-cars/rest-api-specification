@REQ_MCA-5670
Feature: Update LAP TIME Node
  As an API contributor
  I want to be able to update a LAP TIME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5679
  Rule: The response contains all properties that are officially specified when updating a LAP TIME

    @TEST_MCA-5681 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a LAP TIME
      Given there exists a "LAP TIME" "Fastest lap"
      When the user updates the node "Fastest lap" with the following data
        | key         | value          |
        | time        | PT1M33.294S    |
        | driver_name | Klaus Ludwig_2 |
        | date        |                |
      Then the response should contain the following properties
        | key         | value          |
        | time        | PT1M33.294S    |
        | driver_name | Klaus Ludwig_2 |
        | date        |                |
