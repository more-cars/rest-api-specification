@REQ_MCA-2789
Feature: Delete MAGAZINE ISSUE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2790
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2791
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "ComputerBild Cover"
      And there exists a "has image" relationship "R" between "Sieger-Typen" and "ComputerBild Cover"
      When the user deletes the "has image" relationship between "Sieger-Typen" and "ComputerBild Cover"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
