@REQ_MCA-5421
Feature: Update COMPANY Node
  As an API contributor
  I want to be able to update a COMPANY
  So I can add missing information or fix incorrect data

  @RULE_MCA-5434
  Rule: Unknown properties are ignored when updating a COMPANY

    @TEST_MCA-5435 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a COMPANY
      Given there exists a "COMPANY" "BMW AG"
      When the user updates the node "BMW AG" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
