@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5931
  Rule: Requests are rejected when there exists no BOOK with the provided ID

    @TEST_MCA-5932 @implemented
    Scenario: Trying to update a non-existing BOOK
      Given "BOOK" "F1 in Numbers" does NOT exist
      When the user updates the node "F1 in Numbers"
      Then the request should be rejected with status code 404
