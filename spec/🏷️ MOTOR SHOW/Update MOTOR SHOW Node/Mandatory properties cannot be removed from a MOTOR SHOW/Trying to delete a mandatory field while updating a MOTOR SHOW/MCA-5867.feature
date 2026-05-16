@REQ_MCA-5850
Feature: Update MOTOR SHOW Node
  As an API contributor
  I want to be able to update a MOTOR SHOW
  So I can add missing information or fix incorrect data

  @RULE_MCA-5866
  Rule: Mandatory properties cannot be removed from a MOTOR SHOW

    @TEST_MCA-5867 @implemented
    Scenario: Trying to delete a mandatory field while updating a MOTOR SHOW.
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user updates the node "IAA Frankfurt" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
