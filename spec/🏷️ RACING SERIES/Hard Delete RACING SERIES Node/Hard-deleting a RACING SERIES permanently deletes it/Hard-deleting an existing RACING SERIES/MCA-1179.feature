@REQ_MCA-1177
Feature: Hard Delete RACING SERIES Node
  As an API contributor
  I want to be able to delete a RACING SERIES
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1178
  Rule: Hard-deleting a RACING SERIES permanently deletes it

    @TEST_MCA-1179 @implemented
    Scenario: Hard-deleting an existing RACING SERIES
      Given there exists a "RACING SERIES" "DTM"
      When the user hard-deletes the "RACING SERIES" "DTM"
      Then the response should return with status code 204
      And the "RACING SERIES" "DTM" should not exist anymore
