@REQ_MCA-5616
Feature: Update RACING EVENT Node
  As an API contributor
  I want to be able to update a RACING EVENT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5625
  Rule: The response contains all properties that are officially specified when updating a RACING EVENT

    @TEST_MCA-5627 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a RACING EVENT
      Given there exists a "RACING EVENT" "GP Monaco"
      When the user updates the node "GP Monaco" with the following data
        | key       | value       |
        | name      | GP Monaco_2 |
        | round     |             |
        | date_from |             |
        | date_to   |             |
      Then the response should contain the following properties
        | key       | value       |
        | name      | GP Monaco_2 |
        | round     |             |
        | date_from |             |
        | date_to   |             |
