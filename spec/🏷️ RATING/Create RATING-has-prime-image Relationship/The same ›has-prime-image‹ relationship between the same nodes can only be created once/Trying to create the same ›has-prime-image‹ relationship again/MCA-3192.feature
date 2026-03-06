@REQ_MCA-3184
Feature: Create RATING-has-prime-image Relationship

  @RULE_MCA-3191
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3192 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "Top Rating"
      And there exists a "has prime image" relationship between "93 Percent" and "Top Rating"
      When the user creates a "has prime image" relationship between "93 Percent" and "Top Rating"
      Then the response should return with status code 304
