@REQ_MCA-2816
Feature: Delete MAGAZINE ISSUE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2817
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2818
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "ComputerBild Cover"
      And there exists a "has prime image" relationship "R" between "Sieger-Typen" and "ComputerBild Cover"
      When the user deletes the "has prime image" relationship between "Sieger-Typen" and "ComputerBild Cover"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
