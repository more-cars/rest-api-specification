@REQ_MCA-5724
Feature: Update MODEL CAR Node
  As an API contributor
  I want to be able to update a MODEL CAR
  So I can add missing information or fix incorrect data

  @RULE_MCA-5725
  Rule: Requests to update a MODEL CAR are accepted when the provided data is valid

    @TEST_MCA-5726 @implemented
    Scenario: Updating a MODEL CAR with valid data
      Given there exists a "MODEL CAR" "F40 Matchbox"
      When the user updates the node "F40 Matchbox" with the following data
        | key          | value      |
        | name         | BMW 2002_2 |
        | product_code | DHX60_2    |
        | release_year | 2018       |
        | scale        | 1:64       |
        | series       | BMW_2      |
      Then the request should be confirmed with status code 200
