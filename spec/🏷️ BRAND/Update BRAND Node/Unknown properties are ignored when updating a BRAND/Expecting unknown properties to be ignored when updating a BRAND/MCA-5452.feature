@REQ_MCA-5439
Feature: Update BRAND Node
  As an API contributor
  I want to be able to update a BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5451
  Rule: Unknown properties are ignored when updating a BRAND

    @TEST_MCA-5452
    Scenario: Expecting unknown properties to be ignored when updating a BRAND
      Given there exists a "BRAND" "BMW"
      When the user updates the node "BMW" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
