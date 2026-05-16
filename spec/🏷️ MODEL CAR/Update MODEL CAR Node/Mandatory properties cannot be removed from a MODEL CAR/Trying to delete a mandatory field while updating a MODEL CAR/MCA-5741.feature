@REQ_MCA-5724
Feature: Update MODEL CAR Node
  As an API contributor
  I want to be able to update a MODEL CAR
  So I can add missing information or fix incorrect data

  @RULE_MCA-5740
  Rule: Mandatory properties cannot be removed from a MODEL CAR

    @TEST_MCA-5741 @implemented
    Scenario: Trying to delete a mandatory field while updating a MODEL CAR.
      Given there exists a "MODEL CAR" "F40 Matchbox"
      When the user updates the node "F40 Matchbox" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
