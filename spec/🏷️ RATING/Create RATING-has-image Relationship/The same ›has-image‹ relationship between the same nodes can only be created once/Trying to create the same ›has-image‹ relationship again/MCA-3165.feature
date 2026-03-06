@REQ_MCA-3157
Feature: Create RATING-has-image Relationship

  @RULE_MCA-3164
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3165 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "Top Rating"
      And there exists a "has image" relationship between "93 Percent" and "Top Rating"
      When the user creates a "has image" relationship between "93 Percent" and "Top Rating"
      Then the response should return with status code 304
