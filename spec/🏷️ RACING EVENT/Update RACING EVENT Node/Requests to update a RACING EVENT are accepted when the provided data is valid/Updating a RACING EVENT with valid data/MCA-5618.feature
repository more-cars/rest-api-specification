@REQ_MCA-5616
Feature: Update RACING EVENT Node
  As an API contributor
  I want to be able to update a RACING EVENT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5617
  Rule: Requests to update a RACING EVENT are accepted when the provided data is valid

    @TEST_MCA-5618 @implemented
    Scenario: Updating a RACING EVENT with valid data
      Given there exists a "RACING EVENT" "GP Monaco"
      When the user updates the node "GP Monaco" with the following data
        | key       | value        |
        | name      | GP Monaco_2  |
        | round     | 9            |
        | date_from | 2025-05-20_2 |
        | date_to   | 2025-05-22_2 |
      Then the request should be confirmed with status code 201
