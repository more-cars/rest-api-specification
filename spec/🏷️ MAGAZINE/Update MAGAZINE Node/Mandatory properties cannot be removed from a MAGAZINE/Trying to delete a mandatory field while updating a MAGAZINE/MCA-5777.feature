@REQ_MCA-5760
Feature: Update MAGAZINE Node
  As an API contributor
  I want to be able to update a MAGAZINE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5776
  Rule: Mandatory properties cannot be removed from a MAGAZINE

    @TEST_MCA-5777 @implemented
    Scenario: Trying to delete a mandatory field while updating a MAGAZINE.
      Given there exists a "MAGAZINE" "sport auto"
      When the user updates the node "sport auto" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
