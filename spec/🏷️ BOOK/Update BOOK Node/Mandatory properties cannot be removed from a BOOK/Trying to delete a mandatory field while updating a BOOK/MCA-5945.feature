@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5944
  Rule: Mandatory properties cannot be removed from a BOOK

    @TEST_MCA-5945 @implemented
    Scenario: Trying to delete a mandatory field while updating a BOOK.
      Given there exists a "BOOK" "F1 in Numbers"
      When the user updates the node "F1 in Numbers" with the following data
        | key   | value |
        | title |       |
      Then the request should be rejected with status code 400
