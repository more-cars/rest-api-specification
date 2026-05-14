@REQ_MCA-5544
Feature: Update PRICE Node
  As an API contributor
  I want to be able to update a PRICE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5560
  Rule: Mandatory properties cannot be removed from a PRICE

    @TEST_MCA-5561 @implemented
    Scenario: Trying to delete a mandatory field while updating a PRICE.
      Given there exists a "PRICE" "Base price"
      When the user updates the node "Base price" with the following data
        | key           | value |
        | price         |       |
        | price_year    |       |
        | currency_code |       |
        | country_code  |       |
      Then the request should be rejected with status code 400
