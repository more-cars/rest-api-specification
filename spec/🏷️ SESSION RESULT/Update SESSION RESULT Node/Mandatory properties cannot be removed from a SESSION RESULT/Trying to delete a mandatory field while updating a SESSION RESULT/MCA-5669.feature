@REQ_MCA-5652
Feature: Update SESSION RESULT Node
  As an API contributor
  I want to be able to update a SESSION RESULT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5668
  Rule: Mandatory properties cannot be removed from a SESSION RESULT

    @TEST_MCA-5669 @implemented
    Scenario: Trying to delete a mandatory field while updating a SESSION RESULT.
      Given there exists a "SESSION RESULT" "1st place"
      When the user updates the node "1st place" with the following data
        | key         | value |
        | position    |       |
        | driver_name |       |
      Then the request should be rejected with status code 400
