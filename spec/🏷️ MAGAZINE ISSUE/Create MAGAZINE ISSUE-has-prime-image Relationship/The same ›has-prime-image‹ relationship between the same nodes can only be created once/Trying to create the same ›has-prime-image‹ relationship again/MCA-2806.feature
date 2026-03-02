@REQ_MCA-2798
Feature: Create MAGAZINE ISSUE-has-prime-image Relationship

  @RULE_MCA-2805
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2806 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      And there exists a "IMAGE" "Cover"
      And there exists a "has prime image" relationship between "Sieger-Typen" and "Cover"
      When the user creates a "has prime image" relationship between "Sieger-Typen" and "Cover"
      Then the response should return with status code 304
