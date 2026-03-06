@REQ_MCA-3229
Feature: Delete CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationship
  As an API contributor
  I want to be able to disconnect RATINGS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3236
  Rule: Requests to delete the ›reviewed-by-magazine-issue-with-rating‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3237 @implemented
    Scenario: Trying to delete a non-existent ›reviewed-by-magazine-issue-with-rating‹ relationship
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "RATING" "invalid rating"
      And there exists NO "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "invalid rating"
      When the user deletes the "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "invalid rating"
      Then the request should be rejected with status code 404
