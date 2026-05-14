@REQ_MCA-5544
Feature: Update PRICE Node
  As an API contributor
  I want to be able to update a PRICE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5556
  Rule: Unknown properties are ignored when updating a PRICE

    @TEST_MCA-5557 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a PRICE
      Given there exists a "PRICE" "Base price"
      When the user updates the node "Base price" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
