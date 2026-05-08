@REQ_MCA-5421
Feature: Update COMPANY Node
  As an API contributor
  I want to be able to update a COMPANY
  So I can add missing information or fix incorrect data

  @RULE_MCA-5422
  Rule: Requests to update a COMPANY are accepted when the provided data is valid

    @TEST_MCA-5423
    Scenario: Updating a COMPANY with valid data
      Given there exists a "COMPANY" "BMW AG"
      When the user updates the node "BMW AG" with the following data
        | key                         | value    |
        | name                        | BMW AG_2 |
        | founded                     | 1918     |
        | defunct                     |          |
        | headquarters_location       | Munich_2 |
        | hq_country_code             | DE_2     |
        | legal_headquarters_location | Munich_2 |
        | legal_hq_country_code       | DE_2     |
      Then the request should be confirmed with status code 201
