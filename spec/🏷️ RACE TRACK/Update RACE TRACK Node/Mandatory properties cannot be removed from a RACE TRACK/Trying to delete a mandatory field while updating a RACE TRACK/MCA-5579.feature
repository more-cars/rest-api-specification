@REQ_MCA-5562
Feature: Update RACE TRACK Node
  As an API contributor
  I want to be able to update a RACE TRACK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5578
  Rule: Mandatory properties cannot be removed from a RACE TRACK

    @TEST_MCA-5579 @implemented
    Scenario: Trying to delete a mandatory field while updating a RACE TRACK.
      Given there exists a "RACE TRACK" "Norisring"
      When the user updates the node "Norisring" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
