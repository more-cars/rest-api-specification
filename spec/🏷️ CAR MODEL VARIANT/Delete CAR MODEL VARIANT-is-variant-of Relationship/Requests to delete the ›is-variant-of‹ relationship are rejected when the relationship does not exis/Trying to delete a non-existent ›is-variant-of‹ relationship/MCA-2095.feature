@REQ_MCA-2087
Feature: Delete CAR MODEL VARIANT-is-variant-of Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2094
  Rule: Requests to delete the ›is-variant-of‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2095 @implemented
    Scenario: Trying to delete a non-existent ›is-variant-of‹ relationship
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "CAR MODEL" "Corolla"
      And there exists NO "is variant of" relationship between "BMW M3" and "Corolla"
      When the user deletes the "is variant of" relationship between "BMW M3" and "Corolla"
      Then the request should be rejected with status code 404
