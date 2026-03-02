@REQ_MCA-2789
Feature: Delete MAGAZINE ISSUE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2796
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2797 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "ComputerBild Cover"
      And there exists NO "has image" relationship between "Sieger-Typen" and "ComputerBild Cover"
      When the user deletes the "has image" relationship between "Sieger-Typen" and "ComputerBild Cover"
      Then the request should be rejected with status code 404
