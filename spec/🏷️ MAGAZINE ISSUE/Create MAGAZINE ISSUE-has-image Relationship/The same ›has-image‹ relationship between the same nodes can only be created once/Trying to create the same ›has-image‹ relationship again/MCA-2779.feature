@REQ_MCA-2771
Feature: Create MAGAZINE ISSUE-has-image Relationship

  @RULE_MCA-2778
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2779
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "Cover"
      And there exists a "has image" relationship between "Sieger-Typen" and "Cover"
      When the user creates a "has image" relationship between "Sieger-Typen" and "Cover"
      Then the response should return with status code 304
