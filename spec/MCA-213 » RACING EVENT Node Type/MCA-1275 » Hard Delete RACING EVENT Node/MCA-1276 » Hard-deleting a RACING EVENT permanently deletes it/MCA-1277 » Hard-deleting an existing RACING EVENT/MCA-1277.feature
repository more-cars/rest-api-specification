@REQ_MCA-1275
Feature: Hard Delete RACING EVENT Node
  As an API contributor
  I want to be able to delete a RACING EVENT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1276
  Rule: Hard-deleting a RACING EVENT permanently deletes it

    @TEST_MCA-1277 @implemented
    Scenario: Hard-deleting an existing RACING EVENT
      Given there exists a "RACING EVENT" "DTM"
      When the user hard-deletes the "RACING EVENT" "DTM"
      Then the response should return with status code 204
      And the "RACING EVENT" "DTM" should not exist anymore
