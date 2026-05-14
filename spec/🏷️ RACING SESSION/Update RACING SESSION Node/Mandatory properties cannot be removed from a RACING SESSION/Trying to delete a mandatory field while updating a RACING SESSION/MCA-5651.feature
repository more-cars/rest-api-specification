@REQ_MCA-5634
Feature: Update RACING SESSION Node
  As an API contributor
  I want to be able to update a RACING SESSION
  So I can add missing information or fix incorrect data

  @RULE_MCA-5650
  Rule: Mandatory properties cannot be removed from a RACING SESSION

    @TEST_MCA-5651 @implemented
    Scenario: Trying to delete a mandatory field while updating a RACING SESSION.
      Given there exists a "RACING SESSION" "Qualifying"
      When the user updates the node "Qualifying" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
