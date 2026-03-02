@REQ_MCA-2789
Feature: Delete MAGAZINE ISSUE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2792
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2795 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship where both IDs are invalid
      Given "MAGAZINE ISSUE" "Sieger-Typen" does NOT exist
      And "IMAGE" "ComputerBild Cover" does NOT exist
      When the user deletes the "has image" relationship between "Sieger-Typen" and "ComputerBild Cover"
      Then the request should be rejected with status code 404
