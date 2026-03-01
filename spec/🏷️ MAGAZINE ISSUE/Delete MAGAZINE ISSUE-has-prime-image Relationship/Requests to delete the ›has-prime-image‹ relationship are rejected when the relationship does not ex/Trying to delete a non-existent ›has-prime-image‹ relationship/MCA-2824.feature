@REQ_MCA-2816
Feature: Delete MAGAZINE ISSUE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2823
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2824
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "ComputerBild Cover"
      And there exists NO "has prime image" relationship between "Sieger-Typen" and "ComputerBild Cover"
      When the user deletes the "has prime image" relationship between "Sieger-Typen" and "ComputerBild Cover"
      Then the request should be rejected with status code 404
