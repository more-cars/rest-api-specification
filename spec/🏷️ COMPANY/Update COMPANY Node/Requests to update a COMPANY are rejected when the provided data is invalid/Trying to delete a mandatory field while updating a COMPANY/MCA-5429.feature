@REQ_MCA-5421
Feature: Update COMPANY Node
  As an API contributor
  I want to be able to update a COMPANY
  So I can add missing information or fix incorrect data

  @RULE_MCA-5428
  Rule: Requests to update a COMPANY are rejected when the provided data is invalid

    @TEST_MCA-5429
    Scenario: Trying to delete a mandatory field while updating a COMPANY.
      Given there exists a "COMPANY" "BMW AG"
      When the user tries to update the node "BMW AG" with the following data
        | key  | value |
        | name |       |
      Then the request should be rejected with status code 400
