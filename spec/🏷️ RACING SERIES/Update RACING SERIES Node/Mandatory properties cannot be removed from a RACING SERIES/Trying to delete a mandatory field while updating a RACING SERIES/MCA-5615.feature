@REQ_MCA-5598
Feature: Update RACING SERIES Node
  As an API contributor
  I want to be able to update a RACING SERIES
  So I can add missing information or fix incorrect data

  @RULE_MCA-5614
  Rule: Mandatory properties cannot be removed from a RACING SERIES

    @TEST_MCA-5615 @implemented
    Scenario: Trying to delete a mandatory field while updating a RACING SERIES.
      Given there exists a "RACING SERIES" "Formula 1"
      When the user updates the node "Formula 1" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
