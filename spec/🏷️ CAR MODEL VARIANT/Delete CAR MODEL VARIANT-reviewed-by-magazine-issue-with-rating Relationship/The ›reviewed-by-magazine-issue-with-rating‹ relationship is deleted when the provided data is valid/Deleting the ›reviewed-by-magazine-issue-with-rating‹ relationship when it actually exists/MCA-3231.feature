@REQ_MCA-3229
Feature: Delete CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationship
  As an API contributor
  I want to be able to disconnect RATINGS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3230
  Rule: The ›reviewed-by-magazine-issue-with-rating‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3231 @implemented
    Scenario: Deleting the ›reviewed-by-magazine-issue-with-rating‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "RATING" "invalid rating"
      And there exists a "reviewed by magazine issue with rating" relationship "R" between "McLaren 750S" and "invalid rating"
      When the user deletes the "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "invalid rating"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
