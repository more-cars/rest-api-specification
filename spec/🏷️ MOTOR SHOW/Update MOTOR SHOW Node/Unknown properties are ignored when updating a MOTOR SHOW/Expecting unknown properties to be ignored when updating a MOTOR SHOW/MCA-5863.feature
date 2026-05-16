@REQ_MCA-5850
Feature: Update MOTOR SHOW Node
  As an API contributor
  I want to be able to update a MOTOR SHOW
  So I can add missing information or fix incorrect data

  @RULE_MCA-5862
  Rule: Unknown properties are ignored when updating a MOTOR SHOW

    @TEST_MCA-5863 @implemented
    Scenario: Expecting unknown properties to be ignored when updating a MOTOR SHOW
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user updates the node "IAA Frankfurt" with the following data
        | key         | value |
        | thimbleweed | park  |
      Then the response should NOT contain the following keys
        | key         |
        | thimbleweed |
