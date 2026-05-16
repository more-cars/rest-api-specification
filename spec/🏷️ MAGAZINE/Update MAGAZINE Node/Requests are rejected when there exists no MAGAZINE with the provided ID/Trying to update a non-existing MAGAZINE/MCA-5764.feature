@REQ_MCA-5760
Feature: Update MAGAZINE Node
  As an API contributor
  I want to be able to update a MAGAZINE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5763
  Rule: Requests are rejected when there exists no MAGAZINE with the provided ID

    @TEST_MCA-5764 @implemented
    Scenario: Trying to update a non-existing MAGAZINE
      Given "MAGAZINE" "sport auto" does NOT exist
      When the user updates the node "sport auto"
      Then the request should be rejected with status code 404
