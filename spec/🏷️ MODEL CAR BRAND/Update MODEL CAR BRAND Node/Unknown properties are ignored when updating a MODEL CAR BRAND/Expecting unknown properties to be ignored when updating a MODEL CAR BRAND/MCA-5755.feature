@REQ_MCA-5742
Feature: Update MODEL CAR BRAND Node
  As an API contributor
  I want to be able to update a MODEL CAR BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5754
  Rule: Unknown properties are ignored when updating a MODEL CAR BRAND

    @TEST_MCA-5755 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a MODEL CAR BRAND
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user updates the node "Hot Wheels" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
