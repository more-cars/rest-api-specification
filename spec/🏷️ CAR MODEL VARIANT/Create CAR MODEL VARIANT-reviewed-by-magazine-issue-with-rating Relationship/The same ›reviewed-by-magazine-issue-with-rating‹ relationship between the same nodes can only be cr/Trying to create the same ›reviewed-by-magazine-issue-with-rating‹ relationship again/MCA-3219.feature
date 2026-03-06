@REQ_MCA-3211
Feature: Create CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationship

  @RULE_MCA-3218
  Rule: The same ›reviewed-by-magazine-issue-with-rating‹ relationship between the same nodes can only be created once

    @TEST_MCA-3219 @implemented
    Scenario: Trying to create the same ›reviewed-by-magazine-issue-with-rating‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "RATING" "93 Percent"
      And there exists a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent"
      When the user creates a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent"
      Then the response should return with status code 304
